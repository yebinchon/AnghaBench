; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_swba_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_pull_swba_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_swba_ev_arg = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.wmi_10_4_host_swba_event = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"refusing to parse invalid swba structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_swba_ev_arg*)* @ath10k_wmi_10_4_op_pull_swba_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_4_op_pull_swba_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_swba_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_swba_ev_arg*, align 8
  %8 = alloca %struct.wmi_10_4_host_swba_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_swba_ev_arg* %2, %struct.wmi_swba_ev_arg** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.wmi_10_4_host_swba_event*
  store %struct.wmi_10_4_host_swba_event* %16, %struct.wmi_10_4_host_swba_event** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EPROTO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %167

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @skb_pull(%struct.sk_buff* %26, i32 16)
  %28 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %29 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %32 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i64 0, i64* %11, align 8
  %33 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %34 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__le32_to_cpu(i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %163, %25
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %166

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @BIT(i32 0)
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %163

46:                                               ; preds = %40
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %49 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i64 @ARRAY_SIZE(%struct.TYPE_6__* %50)
  %52 = icmp eq i64 %47, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %166

57:                                               ; preds = %46
  %58 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %59 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__le32_to_cpu(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 4
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %71 = call i32 @ath10k_warn(%struct.ath10k* %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EPROTO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %167

74:                                               ; preds = %57
  %75 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %76 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__le32_to_cpu(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @__cpu_to_le32(i32 %89)
  %91 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %92 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  store i64 %90, i64* %96, align 8
  br label %104

97:                                               ; preds = %74
  %98 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %99 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %86
  %105 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %106 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %114 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 %112, i32* %118, align 4
  %119 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %120 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %128 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  store i32 %126, i32* %132, align 8
  %133 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %134 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %133, i32 0, i32 0
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %142 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 %140, i32* %146, align 4
  %147 = load %struct.wmi_10_4_host_swba_event*, %struct.wmi_10_4_host_swba_event** %8, align 8
  %148 = getelementptr inbounds %struct.wmi_10_4_host_swba_event, %struct.wmi_10_4_host_swba_event* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %156 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i64, i64* %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 %154, i32* %160, align 8
  %161 = load i64, i64* %11, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %11, align 8
  br label %163

163:                                              ; preds = %104, %45
  %164 = load i32, i32* %9, align 4
  %165 = ashr i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %37

166:                                              ; preds = %56, %37
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %69, %22
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i64 @__cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
