; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_write_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8842.c_ks8842_write_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8842_adapter = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@REG_MARL = common dso_local global i64 0, align 8
@MICREL_KS884X = common dso_local global i32 0, align 4
@REG_MACAR1 = common dso_local global i64 0, align 8
@REG_MACAR3 = common dso_local global i64 0, align 8
@REG_MARM = common dso_local global i64 0, align 8
@REG_MACAR2 = common dso_local global i64 0, align 8
@REG_MARH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8842_adapter*, i32*)* @ks8842_write_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8842_write_mac_addr(%struct.ks8842_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ks8842_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ks8842_adapter* %0, %struct.ks8842_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %19, %20
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @REG_MARL, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32 @ks8842_write8(%struct.ks8842_adapter* %17, i32 2, i32 %25, i64 %29)
  %31 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MICREL_KS884X, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %16
  %38 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub i32 %40, %41
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @REG_MACAR1, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @ks8842_write8(%struct.ks8842_adapter* %38, i32 39, i32 %46, i64 %50)
  br label %52

52:                                               ; preds = %37, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MICREL_KS884X, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %56
  %64 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %65 = load i64, i64* @REG_MARL, align 8
  %66 = call i32 @ks8842_read16(%struct.ks8842_adapter* %64, i32 2, i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* @REG_MACAR3, align 8
  %70 = call i32 @ks8842_write16(%struct.ks8842_adapter* %67, i32 39, i32 %68, i64 %69)
  %71 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %72 = load i64, i64* @REG_MARM, align 8
  %73 = call i32 @ks8842_read16(%struct.ks8842_adapter* %71, i32 2, i64 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* @REG_MACAR2, align 8
  %77 = call i32 @ks8842_write16(%struct.ks8842_adapter* %74, i32 39, i32 %75, i64 %76)
  %78 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %79 = load i64, i64* @REG_MARH, align 8
  %80 = call i32 @ks8842_read16(%struct.ks8842_adapter* %78, i32 2, i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i64, i64* @REG_MACAR1, align 8
  %84 = call i32 @ks8842_write16(%struct.ks8842_adapter* %81, i32 39, i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %63, %56
  %86 = load %struct.ks8842_adapter*, %struct.ks8842_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ks8842_adapter, %struct.ks8842_adapter* %86, i32 0, i32 1
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ks8842_write8(%struct.ks8842_adapter*, i32, i32, i64) #1

declare dso_local i32 @ks8842_read16(%struct.ks8842_adapter*, i32, i64) #1

declare dso_local i32 @ks8842_write16(%struct.ks8842_adapter*, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
