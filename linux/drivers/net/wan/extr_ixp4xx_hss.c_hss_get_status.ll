; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_hss_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32 }
%struct.msg = type { i32, i32, i32 }

@PORT_ERROR_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PORT_ERROR_READ\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"HSS-%i: unable to read HSS status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @hss_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hss_get_status(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.msg, align 4
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = call i32 @memset(%struct.msg* %3, i32 0, i32 12)
  %5 = load i32, i32* @PORT_ERROR_READ, align 4
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = getelementptr inbounds %struct.port, %struct.port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.port*, %struct.port** %2, align 8
  %12 = call i32 @hss_npe_send(%struct.port* %11, %struct.msg* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.port*, %struct.port** %2, align 8
  %14 = getelementptr inbounds %struct.port, %struct.port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @npe_recv_message(i32 %15, %struct.msg* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.port*, %struct.port** %2, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %18, %1
  %25 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @memset(%struct.msg*, i32, i32) #1

declare dso_local i32 @hss_npe_send(%struct.port*, %struct.msg*, i8*) #1

declare dso_local i64 @npe_recv_message(i32, %struct.msg*, i8*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
