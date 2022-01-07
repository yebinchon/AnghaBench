; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txp_max_tx_size_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txp_max_tx_size_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32 }

@MVPP2_TXP_MTU_MAX = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_PORT_INDEX_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_MTU_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_TOKEN_SIZE_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_TOKEN_SIZE_MAX = common dso_local global i32 0, align 4
@MVPP2_TXQ_TOKEN_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_txp_max_tx_size_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_txp_max_tx_size_set(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MVPP2_TXP_MTU_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @MVPP2_TXP_MTU_MAX, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 3, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %21 = call i32 @mvpp2_egress_port(%struct.mvpp2_port* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MVPP2_TXP_SCHED_PORT_INDEX_REG, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mvpp2_write(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MVPP2_TXP_SCHED_MTU_REG, align 4
  %32 = call i32 @mvpp2_read(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @MVPP2_TXP_MTU_MAX, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %41 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MVPP2_TXP_SCHED_MTU_REG, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mvpp2_write(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %47 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MVPP2_TXP_SCHED_TOKEN_SIZE_REG, align 4
  %50 = call i32 @mvpp2_read(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MVPP2_TXP_TOKEN_SIZE_MAX, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %17
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @MVPP2_TXP_TOKEN_SIZE_MAX, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %67 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MVPP2_TXP_SCHED_TOKEN_SIZE_REG, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @mvpp2_write(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %57, %17
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %109, %72
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %76 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %81 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @MVPP2_TXQ_SCHED_TOKEN_SIZE_REG(i32 %83)
  %85 = call i32 @mvpp2_read(i32 %82, i32 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @MVPP2_TXQ_TOKEN_SIZE_MAX, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %79
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @MVPP2_TXQ_TOKEN_SIZE_MAX, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %102 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @MVPP2_TXQ_SCHED_TOKEN_SIZE_REG(i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @mvpp2_write(i32 %103, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %92, %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %73

112:                                              ; preds = %73
  ret void
}

declare dso_local i32 @mvpp2_egress_port(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

declare dso_local i32 @mvpp2_read(i32, i32) #1

declare dso_local i32 @MVPP2_TXQ_SCHED_TOKEN_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
