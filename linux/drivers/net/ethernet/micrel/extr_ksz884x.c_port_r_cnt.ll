; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_r_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_r_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, %struct.ksz_port_mib* }
%struct.ksz_port_mib = type { i64, i64, i32*, i32 }

@PORT_COUNTER_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*, i32)* @port_r_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_r_cnt(%struct.ksz_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_port_mib*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 1
  %8 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %8, i64 %10
  store %struct.ksz_port_mib* %11, %struct.ksz_port_mib** %5, align 8
  %12 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %13 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %24, %17
  %19 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %20 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %28 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %31 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %34 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @port_r_mib_cnt(%struct.ksz_hw* %25, i32 %26, i64 %29, i32* %36)
  %38 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %39 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %18

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %53 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %56 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @PORT_COUNTER_NUM, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = call i32 @port_r_mib_pkt(%struct.ksz_hw* %50, i32 %51, i32 %54, i32* %59)
  br label %61

61:                                               ; preds = %49, %43
  %62 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %63 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  ret i32 0
}

declare dso_local i32 @port_r_mib_cnt(%struct.ksz_hw*, i32, i64, i32*) #1

declare dso_local i32 @port_r_mib_pkt(%struct.ksz_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
