; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_reg_w_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_reg_w_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.cmd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.cmd*, i32)* @reg_w_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_buf(%struct.gspca_dev* %0, %struct.cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.cmd* %1, %struct.cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %18, %3
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = load %struct.cmd*, %struct.cmd** %5, align 8
  %10 = getelementptr inbounds %struct.cmd, %struct.cmd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cmd*, %struct.cmd** %5, align 8
  %13 = getelementptr inbounds %struct.cmd, %struct.cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @reg_w(%struct.gspca_dev* %8, i32 %11, i32 %14)
  %16 = load %struct.cmd*, %struct.cmd** %5, align 8
  %17 = getelementptr inbounds %struct.cmd, %struct.cmd* %16, i32 1
  store %struct.cmd* %17, %struct.cmd** %5, align 8
  br label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %7, label %22

22:                                               ; preds = %18
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
