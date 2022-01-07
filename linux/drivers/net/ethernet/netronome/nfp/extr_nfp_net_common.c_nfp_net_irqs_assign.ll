; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_irqs_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_irqs_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i64, %struct.nfp_net_dp, i32 }
%struct.nfp_net_dp = type { i64, i64, i64, i64, i32 }
%struct.msix_entry = type { i32 }

@NFP_NET_NON_Q_VECTORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"More rings (%d,%d) than vectors (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_net_irqs_assign(%struct.nfp_net* %0, %struct.msix_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.msix_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net_dp*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.msix_entry* %1, %struct.msix_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %8, i32 0, i32 1
  store %struct.nfp_net_dp* %9, %struct.nfp_net_dp** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* @NFP_NET_NON_Q_VECTORS, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %20 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %22 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memcpy(i32 %23, %struct.msix_entry* %24, i32 %28)
  %30 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %31 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %34 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %3
  %38 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %39 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %42 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37, %3
  %46 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %51 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %54 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %57 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %55, i64 %58)
  br label %60

60:                                               ; preds = %45, %37
  %61 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %62 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %65 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @min(i64 %63, i64 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %70 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %72 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %75 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @min(i64 %73, i64 %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %80 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %82 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %85 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, %struct.msix_entry*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64, i64) #1

declare dso_local i8* @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
