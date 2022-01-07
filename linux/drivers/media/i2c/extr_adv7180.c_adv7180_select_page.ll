; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_select_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_select_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { i32, i32 }

@ADV7180_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*, i32)* @adv7180_select_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_select_page(%struct.adv7180_state* %0, i32 %1) #0 {
  %3 = alloca %struct.adv7180_state*, align 8
  %4 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %6 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %12 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ADV7180_REG_CTRL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @i2c_smbus_write_byte_data(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %19 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %10, %2
  ret i32 0
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
