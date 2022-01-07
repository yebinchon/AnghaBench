; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_DevicePresent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_DevicePresent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i64, i32 }

@DC21040 = common dso_local global i64 0, align 8
@EISA = common dso_local global i64 0, align 8
@SROM_HWADD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @DevicePresent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DevicePresent(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.de4x5_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %10)
  store %struct.de4x5_private* %11, %struct.de4x5_private** %7, align 8
  %12 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %13 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DC21040, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EISA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @enet_addr_rst(i32 %24)
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @outl(i32 0, i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %91

30:                                               ; preds = %2
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 2
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* @SROM_HWADD, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to i8**
  store i8** %37, i8*** %9, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %58, %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = ashr i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SROM_HWADD, align 4
  %46 = ashr i32 %45, 1
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i64 @srom_rd(i32 %44, i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i8* @cpu_to_le16(i64 %55)
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 196605
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %61
  br label %91

68:                                               ; preds = %64
  %69 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %70 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %69, i32 0, i32 2
  %71 = bitcast i32* %70 to i8**
  store i8** %71, i8*** %9, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %84, %68
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %74, 2
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @srom_rd(i32 %77, i32 %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i8* @cpu_to_le16(i64 %80)
  %82 = load i8**, i8*** %9, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %9, align 8
  store i8* %81, i8** %82, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %72

87:                                               ; preds = %72
  %88 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %89 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %88, i32 0, i32 2
  %90 = call i32 @de4x5_dbg_srom(i32* %89)
  br label %91

91:                                               ; preds = %67, %87, %29
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enet_addr_rst(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i64 @srom_rd(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @de4x5_dbg_srom(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
