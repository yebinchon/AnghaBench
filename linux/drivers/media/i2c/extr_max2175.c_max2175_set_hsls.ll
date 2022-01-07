; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_hsls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_hsls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"set_hsls: lo_pos %u\0A\00", align 1
@MAX2175_LO_BELOW_DESIRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2175*, i64)* @max2175_set_hsls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2175_set_hsls(%struct.max2175* %0, i64 %1) #0 {
  %3 = alloca %struct.max2175*, align 8
  %4 = alloca i64, align 8
  store %struct.max2175* %0, %struct.max2175** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.max2175*, %struct.max2175** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @mxm_dbg(%struct.max2175* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @MAX2175_LO_BELOW_DESIRED, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.max2175*, %struct.max2175** %3, align 8
  %13 = call i32 @MAX2175_IS_BAND_VHF(%struct.max2175* %12)
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.max2175*, %struct.max2175** %3, align 8
  %17 = call i32 @max2175_write_bit(%struct.max2175* %16, i32 5, i32 4, i32 1)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.max2175*, %struct.max2175** %3, align 8
  %20 = call i32 @max2175_write_bit(%struct.max2175* %19, i32 5, i32 4, i32 0)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i64) #1

declare dso_local i32 @MAX2175_IS_BAND_VHF(%struct.max2175*) #1

declare dso_local i32 @max2175_write_bit(%struct.max2175*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
