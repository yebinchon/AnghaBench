; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.cmd_header = type { i32 }

@LBTF_DEB_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbtf_cmd_async(%struct.lbtf_private* %0, i32 %1, %struct.cmd_header* %2, i32 %3) #0 {
  %5 = alloca %struct.lbtf_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_header*, align 8
  %8 = alloca i32, align 4
  store %struct.lbtf_private* %0, %struct.lbtf_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cmd_header* %2, %struct.cmd_header** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @LBTF_DEB_CMD, align 4
  %10 = call i32 @lbtf_deb_enter(i32 %9)
  %11 = load %struct.lbtf_private*, %struct.lbtf_private** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.cmd_header*, %struct.cmd_header** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @__lbtf_cmd_async(%struct.lbtf_private* %11, i32 %12, %struct.cmd_header* %13, i32 %14, i32* null, i32 0)
  %16 = load i32, i32* @LBTF_DEB_CMD, align 4
  %17 = call i32 @lbtf_deb_leave(i32 %16)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @__lbtf_cmd_async(%struct.lbtf_private*, i32, %struct.cmd_header*, i32, i32*, i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
