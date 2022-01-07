; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_get_sample_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ene_ir.c_ene_rx_get_sample_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ene_device = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"RB: hit end, try update w_pointer\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"RB: end of data at %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RB: reading at offset %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"RB: next read will be from offset %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"RB: read at main buffer at %d\00", align 1
@ENE_FW_SAMPLE_BUFFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"RB: read at 1st extra buffer at %d\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"RB: read at 2nd extra buffer at %d\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"attempt to read beyond ring buffer end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ene_device*)* @ene_rx_get_sample_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_rx_get_sample_reg(%struct.ene_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ene_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ene_device* %0, %struct.ene_device** %3, align 8
  %5 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %6 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %9 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %15 = call i32 @ene_rx_read_hw_pointer(%struct.ene_device* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %18 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %21 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %26 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  br label %101

29:                                               ; preds = %16
  %30 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %31 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %35 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %38 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %42 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %45 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %50 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %29
  %52 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %53 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENE_FW_SAMPLE_BUFFER, align 4
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %2, align 4
  br label %101

64:                                               ; preds = %51
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 8
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %69 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %76 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %2, align 4
  br label %101

80:                                               ; preds = %64
  %81 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %82 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %88 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i8*, ...) @dbg_verbose(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %95 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %80
  %100 = call i32 @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %91, %72, %58, %24
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dbg_verbose(i8*, ...) #1

declare dso_local i32 @ene_rx_read_hw_pointer(%struct.ene_device*) #1

declare dso_local i32 @dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
