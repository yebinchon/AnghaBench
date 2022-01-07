; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_roundrobin.c_rr_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_roundrobin.c_rr_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rr_priv = type { i32 }
%struct.team = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rr_priv* (%struct.team*)* @rr_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rr_priv* @rr_priv(%struct.team* %0) #0 {
  %2 = alloca %struct.team*, align 8
  store %struct.team* %0, %struct.team** %2, align 8
  %3 = load %struct.team*, %struct.team** %2, align 8
  %4 = getelementptr inbounds %struct.team, %struct.team* %3, i32 0, i32 0
  %5 = bitcast i32* %4 to %struct.rr_priv*
  ret %struct.rr_priv* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
