; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_config_sched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_config_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@A_TP_TM_PIO_ADDR = common dso_local global i32 0, align 4
@A_TP_TX_MOD_Q1_Q0_RATE_LIMIT = common dso_local global i32 0, align 4
@A_TP_TM_PIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_config_sched(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %13, align 4
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1000
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = mul i32 %26, 125
  store i32 %27, i32* %6, align 4
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %77, %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp ule i32 %29, 255
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = udiv i32 %36, 2
  %38 = add i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = udiv i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  %45 = icmp ule i32 %44, 255
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub i32 %54, %55
  br label %61

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32 [ %56, %53 ], [ %60, %57 ]
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ule i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %66, %61
  br label %76

71:                                               ; preds = %43, %31
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %80

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %28

80:                                               ; preds = %74, %28
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %123

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %3
  %88 = load %struct.adapter*, %struct.adapter** %5, align 8
  %89 = load i32, i32* @A_TP_TM_PIO_ADDR, align 4
  %90 = load i32, i32* @A_TP_TX_MOD_Q1_Q0_RATE_LIMIT, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sdiv i32 %91, 2
  %93 = sub i32 %90, %92
  %94 = call i32 @t3_write_reg(%struct.adapter* %88, i32 %89, i32 %93)
  %95 = load %struct.adapter*, %struct.adapter** %5, align 8
  %96 = load i32, i32* @A_TP_TM_PIO_DATA, align 4
  %97 = call i32 @t3_read_reg(%struct.adapter* %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %87
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 65535
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 %104, 16
  %106 = or i32 %103, %105
  %107 = load i32, i32* %16, align 4
  %108 = shl i32 %107, 24
  %109 = or i32 %106, %108
  store i32 %109, i32* %8, align 4
  br label %118

110:                                              ; preds = %87
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, -65536
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %16, align 4
  %116 = shl i32 %115, 8
  %117 = or i32 %114, %116
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %110, %101
  %119 = load %struct.adapter*, %struct.adapter** %5, align 8
  %120 = load i32, i32* @A_TP_TM_PIO_DATA, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @t3_write_reg(%struct.adapter* %119, i32 %120, i32 %121)
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %118, %83
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
