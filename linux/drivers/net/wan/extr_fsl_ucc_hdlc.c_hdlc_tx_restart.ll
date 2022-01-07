; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_hdlc_tx_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_hdlc_tx_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_hdlc_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QE_RESTART_TX = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_hdlc_private*)* @hdlc_tx_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlc_tx_restart(%struct.ucc_hdlc_private* %0) #0 {
  %2 = alloca %struct.ucc_hdlc_private*, align 8
  %3 = alloca i32, align 4
  store %struct.ucc_hdlc_private* %0, %struct.ucc_hdlc_private** %2, align 8
  %4 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %5 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ucc_fast_get_qe_cr_subblock(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @QE_RESTART_TX, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @QE_CR_PROTOCOL_UNSPECIFIED, align 4
  %14 = call i32 @qe_issue_cmd(i32 %11, i32 %12, i32 %13, i32 0)
  ret i32 0
}

declare dso_local i32 @ucc_fast_get_qe_cr_subblock(i32) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
