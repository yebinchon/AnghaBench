; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_niso_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_niso_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@M_CAN_CCCR = common dso_local global i32 0, align 4
@CCCR_NISO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @m_can_niso_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_niso_supported(%struct.m_can_classdev* %0) #0 {
  %2 = alloca %struct.m_can_classdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @ETIMEDOUT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %10 = call i32 @m_can_config_endisable(%struct.m_can_classdev* %9, i32 1)
  %11 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %12 = load i32, i32* @M_CAN_CCCR, align 4
  %13 = call i32 @m_can_read(%struct.m_can_classdev* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @CCCR_NISO, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %18 = load i32, i32* @M_CAN_CCCR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @m_can_write(%struct.m_can_classdev* %17, i32 %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 10
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %26 = load i32, i32* @M_CAN_CCCR, align 4
  %27 = call i32 @m_can_read(%struct.m_can_classdev* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

32:                                               ; preds = %24
  %33 = call i32 @usleep_range(i32 1, i32 5)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %21

37:                                               ; preds = %31, %21
  %38 = load i32, i32* @CCCR_NISO, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %43 = load i32, i32* @M_CAN_CCCR, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @m_can_write(%struct.m_can_classdev* %42, i32 %43, i32 %44)
  %46 = load %struct.m_can_classdev*, %struct.m_can_classdev** %2, align 8
  %47 = call i32 @m_can_config_endisable(%struct.m_can_classdev* %46, i32 0)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @m_can_config_endisable(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
