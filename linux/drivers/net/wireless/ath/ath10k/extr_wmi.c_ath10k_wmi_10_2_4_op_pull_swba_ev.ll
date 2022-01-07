; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_4_op_pull_swba_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_4_op_pull_swba_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_swba_ev_arg = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.wmi_10_2_4_host_swba_event = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"refusing to parse invalid swba structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_swba_ev_arg*)* @ath10k_wmi_10_2_4_op_pull_swba_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_10_2_4_op_pull_swba_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_swba_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_swba_ev_arg*, align 8
  %8 = alloca %struct.wmi_10_2_4_host_swba_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_swba_ev_arg* %2, %struct.wmi_swba_ev_arg** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.wmi_10_2_4_host_swba_event*
  store %struct.wmi_10_2_4_host_swba_event* %15, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EPROTO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %150

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @skb_pull(%struct.sk_buff* %25, i32 16)
  %27 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %28 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %31 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i64 0, i64* %10, align 8
  %32 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %33 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @__le32_to_cpu(i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %146, %24
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %149

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @BIT(i32 0)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %146

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %48 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i64 @ARRAY_SIZE(%struct.TYPE_6__* %49)
  %51 = icmp eq i64 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON_ONCE(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %149

56:                                               ; preds = %45
  %57 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %58 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__le32_to_cpu(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = icmp ugt i64 %66, 4
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %70 = call i32 @ath10k_warn(%struct.ath10k* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %150

73:                                               ; preds = %56
  %74 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %75 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %83 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i32 %81, i32* %87, align 4
  %88 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %89 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %97 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  store i32 %95, i32* %101, align 4
  %102 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %103 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %111 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 %109, i32* %115, align 4
  %116 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %117 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %125 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i32 %123, i32* %129, align 4
  %130 = load %struct.wmi_10_2_4_host_swba_event*, %struct.wmi_10_2_4_host_swba_event** %8, align 8
  %131 = getelementptr inbounds %struct.wmi_10_2_4_host_swba_event, %struct.wmi_10_2_4_host_swba_event* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.wmi_swba_ev_arg*, %struct.wmi_swba_ev_arg** %7, align 8
  %139 = getelementptr inbounds %struct.wmi_swba_ev_arg, %struct.wmi_swba_ev_arg* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %137, i32* %143, align 4
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %73, %44
  %147 = load i32, i32* %9, align 4
  %148 = ashr i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %36

149:                                              ; preds = %55, %36
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %68, %21
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
