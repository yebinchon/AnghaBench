; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { %struct.TYPE_2__, i32, %struct.nfp_cpp* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.nfp_cpp = type { i32 }

@NSP_STATUS = common dso_local global i32 0, align 4
@NSP_STATUS_MAGIC = common dso_local global i32 0, align 4
@NSP_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Cannot detect NFP Service Processor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NSP_STATUS_MAJOR = common dso_local global i32 0, align 4
@NSP_STATUS_MINOR = common dso_local global i32 0, align 4
@NSP_MAJOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unsupported ABI %hu.%hu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSP_MINOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [101 x i8] c"ABI too old to support NIC operation (%u.%hu < %u.%u), please update the management FW on the flash\0A\00", align 1
@NSP_STATUS_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Service processor busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_nsp*)* @nfp_nsp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_nsp_check(%struct.nfp_nsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_nsp*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %3, align 8
  %9 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %10 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %9, i32 0, i32 2
  %11 = load %struct.nfp_cpp*, %struct.nfp_cpp** %10, align 8
  store %struct.nfp_cpp* %11, %struct.nfp_cpp** %4, align 8
  %12 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nfp_resource_cpp_id(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nfp_resource_address(i32 %18)
  %20 = load i32, i32* @NSP_STATUS, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @nfp_cpp_readq(%struct.nfp_cpp* %22, i32 %23, i32 %24, i32* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %103

30:                                               ; preds = %1
  %31 = load i32, i32* @NSP_STATUS_MAGIC, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @FIELD_GET(i32 %31, i32 %32)
  %34 = load i64, i64* @NSP_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %38 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %103

41:                                               ; preds = %30
  %42 = load i32, i32* @NSP_STATUS_MAJOR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @FIELD_GET(i32 %42, i32 %43)
  %45 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %46 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @NSP_STATUS_MINOR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @FIELD_GET(i32 %48, i32 %49)
  %51 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %52 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %55 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NSP_MAJOR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %41
  %61 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %62 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %63 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %67 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %103

73:                                               ; preds = %41
  %74 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %75 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NSP_MINOR, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %82 = load i64, i64* @NSP_MAJOR, align 8
  %83 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  %84 = getelementptr inbounds %struct.nfp_nsp, %struct.nfp_nsp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NSP_MAJOR, align 8
  %88 = load i64, i64* @NSP_MINOR, align 8
  %89 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %81, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i64 %82, i64 %86, i64 %87, i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @NSP_STATUS_BUSY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %99 = call i32 (%struct.nfp_cpp*, i8*, ...) @nfp_err(%struct.nfp_cpp* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %103

102:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %97, %80, %60, %36, %28
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @nfp_resource_cpp_id(i32) #1

declare dso_local i32 @nfp_resource_address(i32) #1

declare dso_local i32 @nfp_cpp_readq(%struct.nfp_cpp*, i32, i32, i32*) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
