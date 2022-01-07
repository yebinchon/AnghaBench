; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_start_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_start_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_drif = type { i32, i64, %struct.rcar_drif_sdr* }
%struct.rcar_drif_sdr = type { i32 }

@RCAR_DRIF_SICTR = common dso_local global i64 0, align 8
@RCAR_DRIF_SICTR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ch%u: failed to reset rx. ctr 0x%08x\0A\00", align 1
@RCAR_DRIF_RFFUL = common dso_local global i32 0, align 4
@RCAR_DRIF_REOF = common dso_local global i32 0, align 4
@RCAR_DRIF_RFSERR = common dso_local global i32 0, align 4
@RCAR_DRIF_RFUDF = common dso_local global i32 0, align 4
@RCAR_DRIF_RFOVF = common dso_local global i32 0, align 4
@RCAR_DRIF_SISTR = common dso_local global i64 0, align 8
@RCAR_DRIF_SIIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_drif*)* @rcar_drif_start_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_start_channel(%struct.rcar_drif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_drif*, align 8
  %4 = alloca %struct.rcar_drif_sdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rcar_drif* %0, %struct.rcar_drif** %3, align 8
  %8 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %8, i32 0, i32 2
  %10 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %9, align 8
  store %struct.rcar_drif_sdr* %10, %struct.rcar_drif_sdr** %4, align 8
  %11 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %12 = load i64, i64* @RCAR_DRIF_SICTR, align 8
  %13 = load i32, i32* @RCAR_DRIF_SICTR_RESET, align 4
  %14 = call i32 @rcar_drif_write(%struct.rcar_drif* %11, i64 %12, i32 %13)
  %15 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %16 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RCAR_DRIF_SICTR, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RCAR_DRIF_SICTR_RESET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @readl_poll_timeout(i64 %19, i32 %20, i32 %26, i32 7, i32 100000)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %1
  %31 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %4, align 8
  %32 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %33 = getelementptr inbounds %struct.rcar_drif, %struct.rcar_drif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %36 = load i64, i64* @RCAR_DRIF_SICTR, align 8
  %37 = call i32 @rcar_drif_read(%struct.rcar_drif* %35, i64 %36)
  %38 = call i32 @rdrif_err(%struct.rcar_drif_sdr* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %65

40:                                               ; preds = %1
  %41 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %42 = call i32 @rcar_drif_qbuf(%struct.rcar_drif* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %40
  %48 = load i32, i32* @RCAR_DRIF_RFFUL, align 4
  %49 = load i32, i32* @RCAR_DRIF_REOF, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @RCAR_DRIF_RFSERR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RCAR_DRIF_RFUDF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RCAR_DRIF_RFOVF, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %58 = load i64, i64* @RCAR_DRIF_SISTR, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @rcar_drif_write(%struct.rcar_drif* %57, i64 %58, i32 %59)
  %61 = load %struct.rcar_drif*, %struct.rcar_drif** %3, align 8
  %62 = load i64, i64* @RCAR_DRIF_SIIER, align 8
  %63 = call i32 @rcar_drif_write(%struct.rcar_drif* %61, i64 %62, i32 36864)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %47, %45, %30
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @rcar_drif_write(%struct.rcar_drif*, i64, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @rdrif_err(%struct.rcar_drif_sdr*, i8*, i32, i32) #1

declare dso_local i32 @rcar_drif_read(%struct.rcar_drif*, i64) #1

declare dso_local i32 @rcar_drif_qbuf(%struct.rcar_drif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
