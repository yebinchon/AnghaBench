; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_watchdog_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_watchdog_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.myri10ge_priv = type { i32, i32, i32, i32, i32, i64, i64, %struct.myri10ge_slice_state* }
%struct.myri10ge_slice_state = type { %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@watchdog_timer = common dso_local global i32 0, align 4
@MXGEFW_PAD = common dso_local global i64 0, align 8
@myri10ge_fill_thresh = common dso_local global i64 0, align 8
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@myri10ge_watchdog_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @myri10ge_watchdog_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_watchdog_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.myri10ge_slice_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @watchdog_timer, align 4
  %13 = call %struct.myri10ge_priv* @from_timer(%struct.myri10ge_priv* %10, %struct.timer_list* %11, i32 %12)
  store %struct.myri10ge_priv* %13, %struct.myri10ge_priv** %3, align 8
  %14 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %15 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %14, i32 0, i32 7
  %16 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %15, align 8
  %17 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %16, i64 0
  %18 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %106, %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %26 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  br i1 %33, label %34, label %109

34:                                               ; preds = %32
  %35 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %36 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %35, i32 0, i32 7
  %37 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %37, i64 %39
  store %struct.myri10ge_slice_state* %40, %struct.myri10ge_slice_state** %4, align 8
  %41 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %42 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %34
  %47 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %48 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %49 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %48, i32 0, i32 1
  %50 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %51 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MXGEFW_PAD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %47, %struct.TYPE_4__* %49, i64 %54, i32 1)
  %56 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %57 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %61 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %59, %63
  %65 = load i64, i64* @myri10ge_fill_thresh, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %46
  %68 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %69 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %46
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %74 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %80 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %81 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %80, i32 0, i32 0
  %82 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %83 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %79, %struct.TYPE_4__* %81, i64 %84, i32 1)
  %86 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %87 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %91 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %89, %93
  %95 = load i64, i64* @myri10ge_fill_thresh, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %78
  %98 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %99 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %78
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @myri10ge_check_slice(%struct.myri10ge_slice_state* %103, i32* %6, i32* %7, i32 %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %23

109:                                              ; preds = %32
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %114 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PCI_COMMAND, align 4
  %117 = call i32 @pci_read_config_word(i32 %115, i32 %116, i32* %9)
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %123, %109
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %127 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %132 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %131, i32 0, i32 2
  %133 = call i32 @schedule_work(i32* %132)
  br label %144

134:                                              ; preds = %124
  %135 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %136 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %135, i32 0, i32 1
  %137 = load i64, i64* @jiffies, align 8
  %138 = load i32, i32* @myri10ge_watchdog_timeout, align 4
  %139 = load i32, i32* @HZ, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %137, %141
  %143 = call i32 @mod_timer(i32* %136, i64 %142)
  br label %144

144:                                              ; preds = %134, %130
  ret void
}

declare dso_local %struct.myri10ge_priv* @from_timer(%struct.myri10ge_priv*, %struct.timer_list*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv*, %struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @myri10ge_check_slice(%struct.myri10ge_slice_state*, i32*, i32*, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
