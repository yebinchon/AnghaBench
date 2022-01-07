; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_start_hdlc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_start_hdlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.msg = type { i64, i32, i32 }

@PKT_PIPE_FLOW_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"HSS_ENABLE_PKT_PIPE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @hss_start_hdlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hss_start_hdlc(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.msg, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = call i32 @memset(%struct.msg* %3, i32 0, i32 16)
  %5 = load i32, i32* @PKT_PIPE_FLOW_ENABLE, align 4
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.port*, %struct.port** %2, align 8
  %13 = call i32 @hss_npe_send(%struct.port* %12, %struct.msg* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.msg*, i32, i32) #1

declare dso_local i32 @hss_npe_send(%struct.port*, %struct.msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
