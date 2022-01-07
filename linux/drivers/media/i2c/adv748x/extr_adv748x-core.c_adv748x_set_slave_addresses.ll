; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_set_slave_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_set_slave_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@ADV748X_PAGE_DPLL = common dso_local global i32 0, align 4
@ADV748X_PAGE_MAX = common dso_local global i32 0, align 4
@ADV748X_IO_SLAVE_ADDR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*)* @adv748x_set_slave_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_set_slave_addresses(%struct.adv748x_state* %0) #0 {
  %2 = alloca %struct.adv748x_state*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.adv748x_state* %0, %struct.adv748x_state** %2, align 8
  %6 = load i32, i32* @ADV748X_PAGE_DPLL, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ADV748X_PAGE_MAX, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i64, i64* @ADV748X_IO_SLAVE_ADDR_BASE, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.adv748x_state*, %struct.adv748x_state** %2, align 8
  %17 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %16, i32 0, i32 0
  %18 = load %struct.i2c_client**, %struct.i2c_client*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %18, i64 %20
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %3, align 8
  %23 = load %struct.adv748x_state*, %struct.adv748x_state** %2, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 1
  %29 = call i32 @io_write(%struct.adv748x_state* %23, i64 %24, i32 %28)
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @io_write(%struct.adv748x_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
