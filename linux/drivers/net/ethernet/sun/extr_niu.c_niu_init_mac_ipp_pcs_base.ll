; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_mac_ipp_pcs_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_mac_ipp_pcs_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, i32, i32, i32, i64, i64 }

@XMAC_PORT0_OFF = common dso_local global i64 0, align 8
@XMAC_PORT1_OFF = common dso_local global i64 0, align 8
@BMAC_PORT2_OFF = common dso_local global i64 0, align 8
@BMAC_PORT3_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Port %u is invalid, cannot compute MAC block offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_mac_ipp_pcs_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_mac_ipp_pcs_base(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %4 = load %struct.niu*, %struct.niu** %3, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %63 [
    i32 0, label %7
    i32 1, label %21
    i32 2, label %35
    i32 3, label %49
  ]

7:                                                ; preds = %1
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XMAC_PORT0_OFF, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.niu*, %struct.niu** %3, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 6
  store i64 %12, i64* %14, align 8
  %15 = load %struct.niu*, %struct.niu** %3, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.niu*, %struct.niu** %3, align 8
  %18 = getelementptr inbounds %struct.niu, %struct.niu* %17, i32 0, i32 2
  store i32 16384, i32* %18, align 8
  %19 = load %struct.niu*, %struct.niu** %3, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 3
  store i32 8192, i32* %20, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load %struct.niu*, %struct.niu** %3, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XMAC_PORT1_OFF, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.niu*, %struct.niu** %3, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 6
  store i64 %26, i64* %28, align 8
  %29 = load %struct.niu*, %struct.niu** %3, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 1
  store i32 32768, i32* %30, align 4
  %31 = load %struct.niu*, %struct.niu** %3, align 8
  %32 = getelementptr inbounds %struct.niu, %struct.niu* %31, i32 0, i32 2
  store i32 40960, i32* %32, align 8
  %33 = load %struct.niu*, %struct.niu** %3, align 8
  %34 = getelementptr inbounds %struct.niu, %struct.niu* %33, i32 0, i32 3
  store i32 32768, i32* %34, align 4
  br label %73

35:                                               ; preds = %1
  %36 = load %struct.niu*, %struct.niu** %3, align 8
  %37 = getelementptr inbounds %struct.niu, %struct.niu* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BMAC_PORT2_OFF, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.niu*, %struct.niu** %3, align 8
  %42 = getelementptr inbounds %struct.niu, %struct.niu* %41, i32 0, i32 6
  store i64 %40, i64* %42, align 8
  %43 = load %struct.niu*, %struct.niu** %3, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 1
  store i32 16384, i32* %44, align 4
  %45 = load %struct.niu*, %struct.niu** %3, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 2
  store i32 57344, i32* %46, align 8
  %47 = load %struct.niu*, %struct.niu** %3, align 8
  %48 = getelementptr inbounds %struct.niu, %struct.niu* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 4
  br label %73

49:                                               ; preds = %1
  %50 = load %struct.niu*, %struct.niu** %3, align 8
  %51 = getelementptr inbounds %struct.niu, %struct.niu* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BMAC_PORT3_OFF, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.niu*, %struct.niu** %3, align 8
  %56 = getelementptr inbounds %struct.niu, %struct.niu* %55, i32 0, i32 6
  store i64 %54, i64* %56, align 8
  %57 = load %struct.niu*, %struct.niu** %3, align 8
  %58 = getelementptr inbounds %struct.niu, %struct.niu* %57, i32 0, i32 1
  store i32 49152, i32* %58, align 4
  %59 = load %struct.niu*, %struct.niu** %3, align 8
  %60 = getelementptr inbounds %struct.niu, %struct.niu* %59, i32 0, i32 2
  store i32 73728, i32* %60, align 8
  %61 = load %struct.niu*, %struct.niu** %3, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 3
  store i32 -1, i32* %62, align 4
  br label %73

63:                                               ; preds = %1
  %64 = load %struct.niu*, %struct.niu** %3, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.niu*, %struct.niu** %3, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %49, %35, %21, %7
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %63
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
