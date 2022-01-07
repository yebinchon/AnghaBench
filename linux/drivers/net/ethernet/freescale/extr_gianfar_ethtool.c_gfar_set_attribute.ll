; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filer_table = type { i32 }

@RQFCR_PID_PRI_MASK = common dso_local global i32 0, align 4
@RQFCR_PID_L4P_MASK = common dso_local global i32 0, align 4
@RQFCR_PID_VID_MASK = common dso_local global i32 0, align 4
@RQFCR_PID_PORT_MASK = common dso_local global i32 0, align 4
@RQFCR_PID_MAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.filer_table*)* @gfar_set_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_set_attribute(i32 %0, i32 %1, i32 %2, %struct.filer_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.filer_table*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.filer_table* %3, %struct.filer_table** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %72 [
    i32 133, label %10
    i32 134, label %20
    i32 129, label %20
    i32 128, label %36
    i32 136, label %46
    i32 130, label %46
    i32 135, label %46
    i32 138, label %62
    i32 137, label %62
    i32 132, label %62
    i32 131, label %62
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %88

16:                                               ; preds = %10
  %17 = load i32, i32* @RQFCR_PID_PRI_MASK, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %82

20:                                               ; preds = %4, %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RQFCR_PID_L4P_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %88

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @RQFCR_PID_L4P_MASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %30
  br label %82

36:                                               ; preds = %4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %88

42:                                               ; preds = %36
  %43 = load i32, i32* @RQFCR_PID_VID_MASK, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %82

46:                                               ; preds = %4, %4, %4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RQFCR_PID_PORT_MASK, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %88

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 -1, i32* %6, align 4
  br label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @RQFCR_PID_PORT_MASK, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %56
  br label %82

62:                                               ; preds = %4, %4, %4, %4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %88

68:                                               ; preds = %62
  %69 = load i32, i32* @RQFCR_PID_MAC_MASK, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %82

72:                                               ; preds = %4
  %73 = load i32, i32* %6, align 4
  %74 = xor i32 %73, -1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %68, %61, %42, %35, %16
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.filer_table*, %struct.filer_table** %8, align 8
  %87 = call i32 @gfar_set_general_attribute(i32 %83, i32 %84, i32 %85, %struct.filer_table* %86)
  br label %88

88:                                               ; preds = %82, %76, %67, %52, %41, %26, %15
  ret void
}

declare dso_local i32 @gfar_set_general_attribute(i32, i32, i32, %struct.filer_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
