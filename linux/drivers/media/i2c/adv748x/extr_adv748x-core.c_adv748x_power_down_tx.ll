; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_power_down_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_power_down_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_csi2 = type { i32, %struct.adv748x_state* }
%struct.adv748x_state = type { i32 }

@ADV748X_PAGE_TXA = common dso_local global i32 0, align 4
@ADV748X_PAGE_TXB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_csi2*)* @adv748x_power_down_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_power_down_tx(%struct.adv748x_csi2* %0) #0 {
  %2 = alloca %struct.adv748x_csi2*, align 8
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv748x_csi2* %0, %struct.adv748x_csi2** %2, align 8
  %6 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %7 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %6, i32 0, i32 1
  %8 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  store %struct.adv748x_state* %8, %struct.adv748x_state** %3, align 8
  %9 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %10 = call i64 @is_txa(%struct.adv748x_csi2* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ADV748X_PAGE_TXA, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ADV748X_PAGE_TXB, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %18 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @adv748x_write_check(%struct.adv748x_state* %18, i32 %19, i32 49, i32 130, i32* %5)
  %21 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @adv748x_write_check(%struct.adv748x_state* %21, i32 %22, i32 30, i32 0, i32* %5)
  %24 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.adv748x_csi2*, %struct.adv748x_csi2** %2, align 8
  %27 = getelementptr inbounds %struct.adv748x_csi2, %struct.adv748x_csi2* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 128, %28
  %30 = call i32 @adv748x_write_check(%struct.adv748x_state* %24, i32 %25, i32 0, i32 %29, i32* %5)
  %31 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @adv748x_write_check(%struct.adv748x_state* %31, i32 %32, i32 218, i32 1, i32* %5)
  %34 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @adv748x_write_check(%struct.adv748x_state* %34, i32 %35, i32 193, i32 59, i32* %5)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @is_txa(%struct.adv748x_csi2*) #1

declare dso_local i32 @adv748x_write_check(%struct.adv748x_state*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
