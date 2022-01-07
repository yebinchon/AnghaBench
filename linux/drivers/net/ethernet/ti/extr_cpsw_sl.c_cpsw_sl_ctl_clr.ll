; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_ctl_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_ctl_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_sl = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"cpsw_sl: unsupported func 0x%08X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPSW_SL_MACCONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_sl_ctl_clr(%struct.cpsw_sl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_sl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpsw_sl* %0, %struct.cpsw_sl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %9 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %16 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %20 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %29 = load i32, i32* @CPSW_SL_MACCONTROL, align 4
  %30 = call i32 @cpsw_sl_reg_read(%struct.cpsw_sl* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %36 = load i32, i32* @CPSW_SL_MACCONTROL, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @cpsw_sl_reg_write(%struct.cpsw_sl* %35, i32 %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %27, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cpsw_sl_reg_read(%struct.cpsw_sl*, i32) #1

declare dso_local i32 @cpsw_sl_reg_write(%struct.cpsw_sl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
