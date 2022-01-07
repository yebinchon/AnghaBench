; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_br_set_stp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_br_set_stp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.b53_device* }
%struct.b53_device = type { i32 }

@PORT_CTRL_DIS_STATE = common dso_local global i32 0, align 4
@PORT_CTRL_LISTEN_STATE = common dso_local global i32 0, align 4
@PORT_CTRL_LEARN_STATE = common dso_local global i32 0, align 4
@PORT_CTRL_FWD_STATE = common dso_local global i32 0, align 4
@PORT_CTRL_BLOCK_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid STP state: %d\0A\00", align 1
@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@PORT_CTRL_STP_STATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b53_br_set_stp_state(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b53_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 1
  %12 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  store %struct.b53_device* %12, %struct.b53_device** %7, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %24 [
    i32 131, label %14
    i32 128, label %16
    i32 129, label %18
    i32 130, label %20
    i32 132, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @PORT_CTRL_DIS_STATE, align 4
  store i32 %15, i32* %8, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @PORT_CTRL_LISTEN_STATE, align 4
  store i32 %17, i32* %8, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @PORT_CTRL_LEARN_STATE, align 4
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load i32, i32* @PORT_CTRL_FWD_STATE, align 4
  store i32 %21, i32* %8, align 4
  br label %30

22:                                               ; preds = %3
  %23 = load i32, i32* @PORT_CTRL_BLOCK_STATE, align 4
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %49

30:                                               ; preds = %22, %20, %18, %16, %14
  %31 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %32 = load i32, i32* @B53_CTRL_PAGE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @B53_PORT_CTRL(i32 %33)
  %35 = call i32 @b53_read8(%struct.b53_device* %31, i32 %32, i32 %34, i32* %9)
  %36 = load i32, i32* @PORT_CTRL_STP_STATE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %44 = load i32, i32* @B53_CTRL_PAGE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @B53_PORT_CTRL(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @b53_write8(%struct.b53_device* %43, i32 %44, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %30, %24
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @B53_PORT_CTRL(i32) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
