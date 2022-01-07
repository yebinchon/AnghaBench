; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_10g_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_link_status_10g_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32 }

@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@XMAC_INTER2 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_10g_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_10g_serdes(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.niu_link_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.niu*, %struct.niu** %4, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 2
  store %struct.niu_link_config* %15, %struct.niu_link_config** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %16 = load %struct.niu*, %struct.niu** %4, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NIU_FLAGS_10G, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.niu*, %struct.niu** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @link_status_1g_serdes(%struct.niu* %23, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load i32, i32* @SPEED_INVALID, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @DUPLEX_INVALID, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.niu*, %struct.niu** %4, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = call i32 @XPCS_STATUS(i32 0)
  %34 = call i32 @nr64_xpcs(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @XMAC_INTER2, align 4
  %36 = call i32 @nr64_mac(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 16777216
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 4096
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  %50 = load i32, i32* @SPEED_10000, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %49, %46, %41
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.niu_link_config*, %struct.niu_link_config** %7, align 8
  %55 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.niu_link_config*, %struct.niu_link_config** %7, align 8
  %58 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.niu*, %struct.niu** %4, align 8
  %60 = getelementptr inbounds %struct.niu, %struct.niu* %59, i32 0, i32 1
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %52, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @link_status_1g_serdes(%struct.niu*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nr64_xpcs(i32) #1

declare dso_local i32 @XPCS_STATUS(i32) #1

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
