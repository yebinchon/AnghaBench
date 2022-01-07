; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_config_endisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_config_endisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32 }

@M_CAN_CCCR = common dso_local global i32 0, align 4
@CCCR_CSR = common dso_local global i32 0, align 4
@CCCR_INIT = common dso_local global i32 0, align 4
@CCCR_CCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to init module\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_can_config_endisable(%struct.m_can_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %9 = load i32, i32* @M_CAN_CCCR, align 4
  %10 = call i32 @m_can_read(%struct.m_can_classdev* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CCCR_CSR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @CCCR_CSR, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CCCR_CSR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @CCCR_CSR, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %35 = load i32, i32* @M_CAN_CCCR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CCCR_INIT, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @m_can_write(%struct.m_can_classdev* %34, i32 %35, i32 %38)
  %40 = call i32 @udelay(i32 5)
  %41 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %42 = load i32, i32* @M_CAN_CCCR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CCCR_INIT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CCCR_CCE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @m_can_write(%struct.m_can_classdev* %41, i32 %42, i32 %47)
  br label %59

49:                                               ; preds = %20
  %50 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %51 = load i32, i32* @M_CAN_CCCR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @CCCR_INIT, align 4
  %54 = load i32, i32* @CCCR_CCE, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = call i32 @m_can_write(%struct.m_can_classdev* %50, i32 %51, i32 %57)
  br label %59

59:                                               ; preds = %49, %33
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @CCCR_INIT, align 4
  %64 = load i32, i32* @CCCR_CCE, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %85, %66
  %68 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %69 = load i32, i32* @M_CAN_CCCR, align 4
  %70 = call i32 @m_can_read(%struct.m_can_classdev* %68, i32 %69)
  %71 = load i32, i32* @CCCR_INIT, align 4
  %72 = load i32, i32* @CCCR_CCE, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %82 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @netdev_warn(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %6, align 4
  %88 = call i32 @udelay(i32 1)
  br label %67

89:                                               ; preds = %80, %67
  ret void
}

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
