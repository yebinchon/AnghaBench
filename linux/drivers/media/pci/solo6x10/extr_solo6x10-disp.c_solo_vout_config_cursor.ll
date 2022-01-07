; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_vout_config_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_vout_config_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SOLO_VO_CURSOR_POS = common dso_local global i32 0, align 4
@SOLO_VO_CURSOR_CLR = common dso_local global i32 0, align 4
@SOLO_VO_CURSOR_CLR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_vout_config_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_vout_config_cursor(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 20
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @SOLO_VO_CURSOR_MASK(i32 %9)
  %11 = call i32 @solo_reg_write(%struct.solo_dev* %8, i32 %10, i32 0)
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %17 = load i32, i32* @SOLO_VO_CURSOR_POS, align 4
  %18 = call i32 @solo_reg_write(%struct.solo_dev* %16, i32 %17, i32 0)
  %19 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %20 = load i32, i32* @SOLO_VO_CURSOR_CLR, align 4
  %21 = call i32 @solo_reg_write(%struct.solo_dev* %19, i32 %20, i32 -2139090816)
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = load i32, i32* @SOLO_VO_CURSOR_CLR2, align 4
  %24 = call i32 @solo_reg_write(%struct.solo_dev* %22, i32 %23, i32 57472)
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VO_CURSOR_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
