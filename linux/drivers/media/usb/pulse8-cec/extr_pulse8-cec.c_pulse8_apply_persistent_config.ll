; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_apply_persistent_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_apply_persistent_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pulse8 = type { i32 }
%struct.cec_log_addrs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pulse8*, %struct.cec_log_addrs*, i32)* @pulse8_apply_persistent_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_apply_persistent_config(%struct.pulse8* %0, %struct.cec_log_addrs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pulse8*, align 8
  %6 = alloca %struct.cec_log_addrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pulse8* %0, %struct.pulse8** %5, align 8
  store %struct.cec_log_addrs* %1, %struct.cec_log_addrs** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %10 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cec_log_addrs*, %struct.cec_log_addrs** %6, align 8
  %13 = call i32 @cec_s_log_addrs(i32 %11, %struct.cec_log_addrs* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %20 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cec_s_phys_addr(i32 %21, i32 %22, i32 0)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @cec_s_log_addrs(i32, %struct.cec_log_addrs*, i32) #1

declare dso_local i32 @cec_s_phys_addr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
