; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_output_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_output_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppp_output_wakeup(%struct.ppp_channel* %0) #0 {
  %2 = alloca %struct.ppp_channel*, align 8
  %3 = alloca %struct.channel*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %2, align 8
  %4 = load %struct.ppp_channel*, %struct.ppp_channel** %2, align 8
  %5 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %4, i32 0, i32 0
  %6 = load %struct.channel*, %struct.channel** %5, align 8
  store %struct.channel* %6, %struct.channel** %3, align 8
  %7 = load %struct.channel*, %struct.channel** %3, align 8
  %8 = icmp ne %struct.channel* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %3, align 8
  %12 = call i32 @ppp_channel_push(%struct.channel* %11)
  br label %13

13:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @ppp_channel_push(%struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
