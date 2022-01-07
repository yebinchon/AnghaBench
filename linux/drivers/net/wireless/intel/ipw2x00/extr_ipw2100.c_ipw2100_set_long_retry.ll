; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_long_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_long_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i8* }
%struct.host_command = type { i32, i8**, i32, i32 }

@LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i8*)* @ipw2100_set_long_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_long_retry(%struct.ipw2100_priv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.host_command, align 8
  %7 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  store i8** null, i8*** %9, align 8
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 3
  %12 = load i32, i32* @LONG_RETRY_LIMIT, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %13, i8** %16, align 8
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %18 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %17, %struct.host_command* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
