; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_cxd_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_cxd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2099_cfg = type { i32* }
%struct.ngene = type { %struct.TYPE_4__*, %struct.ngene_ci, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.i2c_client**, i32 }
%struct.i2c_client = type { i32 }
%struct.ngene_ci = type { %struct.ngene*, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@cxd_cfgtmpl = common dso_local global %struct.cxd2099_cfg zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"No CXD2099AR found\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"CXD2099AR is uninitialized!\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cxd2099\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CXD2099AR attach failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*)* @cxd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxd_attach(%struct.ngene* %0) #0 {
  %2 = alloca %struct.ngene*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ngene_ci*, align 8
  %5 = alloca %struct.cxd2099_cfg, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %2, align 8
  %9 = load %struct.ngene*, %struct.ngene** %2, align 8
  %10 = getelementptr inbounds %struct.ngene, %struct.ngene* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.ngene*, %struct.ngene** %2, align 8
  %14 = getelementptr inbounds %struct.ngene, %struct.ngene* %13, i32 0, i32 1
  store %struct.ngene_ci* %14, %struct.ngene_ci** %4, align 8
  %15 = bitcast %struct.cxd2099_cfg* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.cxd2099_cfg* @cxd_cfgtmpl to i8*), i64 8, i1 false)
  %16 = load %struct.ngene*, %struct.ngene** %2, align 8
  %17 = getelementptr inbounds %struct.ngene, %struct.ngene* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @ngene_port_has_cxd2099(i32* %20, i32* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %61

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %61

33:                                               ; preds = %27
  %34 = load %struct.ngene_ci*, %struct.ngene_ci** %4, align 8
  %35 = getelementptr inbounds %struct.ngene_ci, %struct.ngene_ci* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.cxd2099_cfg, %struct.cxd2099_cfg* %5, i32 0, i32 0
  store i32* %35, i32** %36, align 8
  %37 = load %struct.ngene*, %struct.ngene** %2, align 8
  %38 = getelementptr inbounds %struct.ngene, %struct.ngene* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %41, i32 64, %struct.cxd2099_cfg* %5)
  store %struct.i2c_client* %42, %struct.i2c_client** %6, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = icmp ne %struct.i2c_client* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %58

46:                                               ; preds = %33
  %47 = load %struct.ngene*, %struct.ngene** %2, align 8
  %48 = load %struct.ngene_ci*, %struct.ngene_ci** %4, align 8
  %49 = getelementptr inbounds %struct.ngene_ci, %struct.ngene_ci* %48, i32 0, i32 0
  store %struct.ngene* %47, %struct.ngene** %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %51 = load %struct.ngene*, %struct.ngene** %2, align 8
  %52 = getelementptr inbounds %struct.ngene, %struct.ngene* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.i2c_client**, %struct.i2c_client*** %55, align 8
  %57 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %56, i64 0
  store %struct.i2c_client* %50, %struct.i2c_client** %57, align 8
  br label %61

58:                                               ; preds = %45
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %46, %30, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ngene_port_has_cxd2099(i32*, i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32*, i32*, i32, %struct.cxd2099_cfg*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
