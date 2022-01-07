; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32)* @tg3_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_halt(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tg3*, %struct.tg3** %4, align 8
  %9 = call i32 @tg3_stop_fw(%struct.tg3* %8)
  %10 = load %struct.tg3*, %struct.tg3** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @tg3_write_sig_pre_reset(%struct.tg3* %10, i32 %11)
  %13 = load %struct.tg3*, %struct.tg3** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @tg3_abort_hw(%struct.tg3* %13, i32 %14)
  %16 = load %struct.tg3*, %struct.tg3** %4, align 8
  %17 = call i32 @tg3_chip_reset(%struct.tg3* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.tg3*, %struct.tg3** %4, align 8
  %19 = call i32 @__tg3_set_mac_addr(%struct.tg3* %18, i32 0)
  %20 = load %struct.tg3*, %struct.tg3** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @tg3_write_sig_legacy(%struct.tg3* %20, i32 %21)
  %23 = load %struct.tg3*, %struct.tg3** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @tg3_write_sig_post_reset(%struct.tg3* %23, i32 %24)
  %26 = load %struct.tg3*, %struct.tg3** %4, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %3
  %31 = load %struct.tg3*, %struct.tg3** %4, align 8
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 2
  %34 = call i32 @tg3_get_nstats(%struct.tg3* %31, i32* %33)
  %35 = load %struct.tg3*, %struct.tg3** %4, align 8
  %36 = load %struct.tg3*, %struct.tg3** %4, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 1
  %38 = call i32 @tg3_get_estats(%struct.tg3* %35, i32* %37)
  %39 = load %struct.tg3*, %struct.tg3** %4, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @memset(i64 %41, i32 0, i32 4)
  br label %43

43:                                               ; preds = %30, %3
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @tg3_stop_fw(%struct.tg3*) #1

declare dso_local i32 @tg3_write_sig_pre_reset(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_abort_hw(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_chip_reset(%struct.tg3*) #1

declare dso_local i32 @__tg3_set_mac_addr(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_sig_legacy(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_sig_post_reset(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_get_nstats(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_get_estats(%struct.tg3*, i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
