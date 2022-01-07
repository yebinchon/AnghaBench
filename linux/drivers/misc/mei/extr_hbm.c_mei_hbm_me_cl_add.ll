; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_me_cl_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_me_cl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.hbm_props_response = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mei_me_client = type { i64, i32, %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.hbm_props_response*)* @mei_hbm_me_cl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_me_cl_add(%struct.mei_device* %0, %struct.hbm_props_response* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.hbm_props_response*, align 8
  %6 = alloca %struct.mei_me_client*, align 8
  %7 = alloca i32*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.hbm_props_response* %1, %struct.hbm_props_response** %5, align 8
  %8 = load %struct.hbm_props_response*, %struct.hbm_props_response** %5, align 8
  %9 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* %10, i32** %7, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @mei_me_cl_rm_by_uuid(%struct.mei_device* %11, i32* %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mei_me_client* @kzalloc(i32 16, i32 %14)
  store %struct.mei_me_client* %15, %struct.mei_me_client** %6, align 8
  %16 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %17 = icmp ne %struct.mei_me_client* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %23 = call i32 @mei_me_cl_init(%struct.mei_me_client* %22)
  %24 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %25 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %24, i32 0, i32 2
  %26 = load %struct.hbm_props_response*, %struct.hbm_props_response** %5, align 8
  %27 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %26, i32 0, i32 1
  %28 = bitcast %struct.TYPE_2__* %25 to i8*
  %29 = bitcast %struct.TYPE_2__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.hbm_props_response*, %struct.hbm_props_response** %5, align 8
  %31 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %34 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %36 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %38 = load %struct.mei_me_client*, %struct.mei_me_client** %6, align 8
  %39 = call i32 @mei_me_cl_add(%struct.mei_device* %37, %struct.mei_me_client* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %21, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mei_me_cl_rm_by_uuid(%struct.mei_device*, i32*) #1

declare dso_local %struct.mei_me_client* @kzalloc(i32, i32) #1

declare dso_local i32 @mei_me_cl_init(%struct.mei_me_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mei_me_cl_add(%struct.mei_device*, %struct.mei_me_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
