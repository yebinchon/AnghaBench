; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_verify_fwi_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_verify_fwi_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@RESP_MAJOR_VER = common dso_local global i32 0, align 4
@RESP_MINOR_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Firmware command interface version = %d.%d\0A\00", align 1
@CGX_FIRMWARE_MAJOR_VER = common dso_local global i32 0, align 4
@CGX_FIRMWARE_MINOR_VER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgx*)* @cgx_lmac_verify_fwi_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_lmac_verify_fwi_version(%struct.cgx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cgx* %0, %struct.cgx** %3, align 8
  %9 = load %struct.cgx*, %struct.cgx** %3, align 8
  %10 = getelementptr inbounds %struct.cgx, %struct.cgx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.cgx*, %struct.cgx** %3, align 8
  %14 = getelementptr inbounds %struct.cgx, %struct.cgx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.cgx*, %struct.cgx** %3, align 8
  %20 = call i32 @cgx_fwi_read_version(i32* %7, %struct.cgx* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %18
  %26 = load i32, i32* @RESP_MAJOR_VER, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FIELD_GET(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @RESP_MINOR_VER, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @FIELD_GET(i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CGX_FIRMWARE_MAJOR_VER, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CGX_FIRMWARE_MINOR_VER, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %25
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43, %23, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @cgx_fwi_read_version(i32*, %struct.cgx*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
