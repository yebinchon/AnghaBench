; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_ci_cxd2099_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_ci_cxd2099_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2099_cfg = type { i32*, i32 }
%struct.ddb_port = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.i2c_client** }
%struct.i2c_client = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cxd_cfgtmpl = common dso_local global %struct.cxd2099_cfg zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"cxd2099\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"CXD2099AR attach failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*, i32)* @ci_cxd2099_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_cxd2099_attach(%struct.ddb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd2099_cfg, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.ddb_port* %0, %struct.ddb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.cxd2099_cfg* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.cxd2099_cfg* @cxd_cfgtmpl to i8*), i64 16, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.cxd2099_cfg, %struct.cxd2099_cfg* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %12 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.cxd2099_cfg, %struct.cxd2099_cfg* %6, i32 0, i32 0
  store i32* %12, i32** %13, align 8
  %14 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %15 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call %struct.i2c_client* @dvb_module_probe(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* %17, i32 64, %struct.cxd2099_cfg* %6)
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %20 = icmp ne %struct.i2c_client* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %33

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %24 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %25 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.i2c_client**, %struct.i2c_client*** %28, align 8
  %30 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %29, i64 0
  store %struct.i2c_client* %23, %struct.i2c_client** %30, align 8
  %31 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %32 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %35 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.i2c_client* @dvb_module_probe(i8*, i32*, i32*, i32, %struct.cxd2099_cfg*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
