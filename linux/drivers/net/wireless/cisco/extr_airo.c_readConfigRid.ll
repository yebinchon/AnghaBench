; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_readConfigRid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_readConfigRid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SUCCESS = common dso_local global i32 0, align 4
@RID_ACTUALCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32)* @readConfigRid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readConfigRid(%struct.airo_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.airo_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  store %struct.airo_info* %0, %struct.airo_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %9 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SUCCESS, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %17 = load i32, i32* @RID_ACTUALCONFIG, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PC4500_readrid(%struct.airo_info* %16, i32 %17, %struct.TYPE_3__* %7, i32 8, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %15
  %26 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %27 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_3__* %27 to i8*
  %29 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = load i32, i32* @SUCCESS, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %23, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @PC4500_readrid(%struct.airo_info*, i32, %struct.TYPE_3__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
