; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dsp.c_read_rds_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-dsp.c_read_rds_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_channel = type { i32, i32, i32 }
%struct.cx88_core = type { i32 }

@cx88_sram_channels = common dso_local global %struct.sram_channel* null, align 8
@SRAM_CH27 = common dso_local global i64 0, align 8
@AUD_RDS_LINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"read RDS samples: current_address=%08x (offset=%08x), sample_count=%d, aud_intstat=%08x\0A\00", align 1
@MO_AUD_INTSTAT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"RDS samples dump: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.cx88_core*, i32*)* @read_rds_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @read_rds_samples(%struct.cx88_core* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sram_channel*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.sram_channel*, %struct.sram_channel** @cx88_sram_channels, align 8
  %15 = load i64, i64* @SRAM_CH27, align 8
  %16 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %14, i64 %15
  store %struct.sram_channel* %16, %struct.sram_channel** %6, align 8
  %17 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %18 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AUD_RDS_LINES, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = udiv i32 %22, 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @AUD_RDS_LINES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = mul i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %29 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cx_read(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %35 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %43 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MO_AUD_INTSTAT, align 4
  %48 = call i8* @cx_read(i32 %47)
  %49 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %46, i8* %48)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8** @kmalloc_array(i32 %50, i32 8, i32 %51)
  store i8** %52, i8*** %7, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %90

56:                                               ; preds = %2
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %81, %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @AUD_RDS_LINES, align 4
  %66 = load i32, i32* %9, align 4
  %67 = mul i32 %65, %66
  %68 = urem i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.sram_channel*, %struct.sram_channel** %6, align 8
  %70 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i8* @cx_read(i32 %73)
  %75 = load i8**, i8*** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load i32, i32* %11, align 4
  %86 = load i8**, i8*** %7, align 8
  %87 = ptrtoint i8** %86 to i32
  %88 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %87)
  %89 = load i8**, i8*** %7, align 8
  store i8** %89, i8*** %3, align 8
  br label %90

90:                                               ; preds = %84, %55
  %91 = load i8**, i8*** %3, align 8
  ret i8** %91
}

declare dso_local i8* @cx_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
