; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5706s_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5706s_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i8*, i32, i32, i32, i32 }

@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@ADVERTISE_1000XHALF = common dso_local global i32 0, align 4
@ADVERTISE_1000XFULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_5706s_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_5706s_linkup(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %8 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @SPEED_1000, align 4
  %11 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %14 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bnx2_read_phy(%struct.bnx2* %13, i32 %16, i32* %4)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BMCR_FULLDPLX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i8*, i8** @DUPLEX_FULL, align 8
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %30

26:                                               ; preds = %1
  %27 = load i8*, i8** @DUPLEX_HALF, align 8
  %28 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @BMCR_ANENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %71

36:                                               ; preds = %30
  %37 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %38 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bnx2_read_phy(%struct.bnx2* %37, i32 %40, i32* %5)
  %42 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %43 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bnx2_read_phy(%struct.bnx2* %42, i32 %45, i32* %6)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ADVERTISE_1000XHALF, align 4
  %52 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %36
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** @DUPLEX_FULL, align 8
  %63 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %56
  %66 = load i8*, i8** @DUPLEX_HALF, align 8
  %67 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %68 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %36
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
