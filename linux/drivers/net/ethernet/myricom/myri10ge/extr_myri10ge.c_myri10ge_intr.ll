; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { i64, i32, %struct.myri10ge_tx_buf, %struct.mcp_irq_data*, %struct.myri10ge_priv* }
%struct.myri10ge_tx_buf = type { i64 }
%struct.mcp_irq_data = type { i32, i32 }
%struct.myri10ge_priv = type { %struct.myri10ge_slice_state*, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@myri10ge_deassert_wait = common dso_local global i32 0, align 4
@myri10ge_max_irq_loops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"irq stuck?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @myri10ge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.myri10ge_slice_state*, align 8
  %7 = alloca %struct.myri10ge_priv*, align 8
  %8 = alloca %struct.mcp_irq_data*, align 8
  %9 = alloca %struct.myri10ge_tx_buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.myri10ge_slice_state*
  store %struct.myri10ge_slice_state* %13, %struct.myri10ge_slice_state** %6, align 8
  %14 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %15 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %14, i32 0, i32 4
  %16 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %15, align 8
  store %struct.myri10ge_priv* %16, %struct.myri10ge_priv** %7, align 8
  %17 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %18 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %17, i32 0, i32 3
  %19 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %18, align 8
  store %struct.mcp_irq_data* %19, %struct.mcp_irq_data** %8, align 8
  %20 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %21 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %20, i32 0, i32 2
  store %struct.myri10ge_tx_buf* %21, %struct.myri10ge_tx_buf** %9, align 8
  %22 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %23 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %30 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %31 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %30, i32 0, i32 0
  %32 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %31, align 8
  %33 = icmp ne %struct.myri10ge_slice_state* %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %36 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %35, i32 0, i32 1
  %37 = call i32 @napi_schedule(i32* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %149

39:                                               ; preds = %28, %2
  %40 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %41 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @IRQ_NONE, align 4
  store i32 %49, i32* %3, align 4
  br label %149

50:                                               ; preds = %39
  %51 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %52 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %58 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %57, i32 0, i32 1
  %59 = call i32 @napi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %62 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %67 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %65
  %71 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %72 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @put_be32(i32 0, i64 %73)
  %75 = load i32, i32* @myri10ge_deassert_wait, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %79 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = call i32 (...) @mb()
  br label %85

82:                                               ; preds = %65, %60
  %83 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %84 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %80
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %129
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %90 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ntohl(i32 %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %9, align 8
  %95 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %86
  %99 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %100 = load i64, i64* %10, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @myri10ge_tx_done(%struct.myri10ge_slice_state* %99, i32 %101)
  br label %103

103:                                              ; preds = %98, %86
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @myri10ge_max_irq_loops, align 4
  %106 = icmp sgt i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %112 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = call i32 @netdev_warn(%struct.TYPE_2__* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %116 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  %117 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %118 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %117, i32 0, i32 1
  %119 = call i32 @schedule_work(i32* %118)
  br label %120

120:                                              ; preds = %110, %103
  %121 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %8, align 8
  %122 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i64 @likely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %132

129:                                              ; preds = %120
  %130 = call i32 (...) @cpu_relax()
  %131 = call i32 (...) @barrier()
  br label %86

132:                                              ; preds = %128
  %133 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %134 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %135 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %134, i32 0, i32 0
  %136 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %135, align 8
  %137 = icmp eq %struct.myri10ge_slice_state* %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %140 = call i32 @myri10ge_check_statblock(%struct.myri10ge_priv* %139)
  br label %141

141:                                              ; preds = %138, %132
  %142 = call i32 @htonl(i32 3)
  %143 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %6, align 8
  %144 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  %147 = call i32 @put_be32(i32 %142, i64 %146)
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %141, %48, %34
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @put_be32(i32, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @myri10ge_tx_done(%struct.myri10ge_slice_state*, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @myri10ge_check_statblock(%struct.myri10ge_priv*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
