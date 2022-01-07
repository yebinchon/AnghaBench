; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_set_grpaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_set_grpaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i64*, i64, i32* }

@HW_MCAST_SIZE = common dso_local global i32 0, align 4
@KS_MAHTR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*)* @ks_set_grpaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_set_grpaddr(%struct.ks_net* %0) #0 {
  %2 = alloca %struct.ks_net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %2, align 8
  %7 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %8 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* @HW_MCAST_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i64* %9, i32 0, i32 %13)
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %46, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %18 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %23 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_gen_crc(i32 6, i32 %27)
  %29 = ashr i32 %28, 26
  %30 = and i32 %29, 63
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 3
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 7
  %35 = shl i32 1, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %39 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %37
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %21
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %15

49:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* @HW_MCAST_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load i64, i64* %3, align 8
  %57 = and i64 %56, 1
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %61 = load i64, i64* @KS_MAHTR0, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %61, %62
  %64 = and i64 %63, -2
  %65 = trunc i64 %64 to i32
  %66 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %67 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %71, 8
  %73 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %74 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = or i64 %72, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ks_wrreg16(%struct.ks_net* %60, i32 %65, i32 %81)
  br label %83

83:                                               ; preds = %59, %55
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %3, align 8
  br label %50

87:                                               ; preds = %50
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ether_gen_crc(i32, i32) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
