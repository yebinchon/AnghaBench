; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ni65.c_ni65_set_performance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ni65.c_ni65_set_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i64 }

@CSR0_STOP = common dso_local global i32 0, align 4
@CSR0_CLRALL = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i16 0, align 2
@cards = common dso_local global %struct.TYPE_2__* null, align 8
@PORT = common dso_local global i64 0, align 8
@L_ADDRREG = common dso_local global i64 0, align 8
@csr80 = common dso_local global i32 0, align 4
@isa0 = common dso_local global i64 0, align 8
@L_BUSIF = common dso_local global i64 0, align 8
@isa1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @ni65_set_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni65_set_performance(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %3 = load i32, i32* @CSR0_STOP, align 4
  %4 = load i32, i32* @CSR0_CLRALL, align 4
  %5 = or i32 %3, %4
  %6 = load i16, i16* @CSR0, align 2
  %7 = sext i16 %6 to i32
  %8 = call i32 @writereg(i32 %5, i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cards, align 8
  %10 = load %struct.priv*, %struct.priv** %2, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %59

19:                                               ; preds = %1
  %20 = load i64, i64* @PORT, align 8
  %21 = load i64, i64* @L_ADDRREG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outw(i16 signext 80, i64 %22)
  %24 = load i64, i64* @PORT, align 8
  %25 = load i64, i64* @L_ADDRREG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inw(i64 %26)
  %28 = icmp ne i32 %27, 80
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %59

30:                                               ; preds = %19
  %31 = load i32, i32* @csr80, align 4
  %32 = and i32 %31, 16383
  %33 = call i32 @writereg(i32 %32, i32 80)
  %34 = load i64, i64* @PORT, align 8
  %35 = load i64, i64* @L_ADDRREG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outw(i16 signext 0, i64 %36)
  %38 = load i64, i64* @isa0, align 8
  %39 = trunc i64 %38 to i16
  %40 = load i64, i64* @PORT, align 8
  %41 = load i64, i64* @L_BUSIF, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outw(i16 signext %39, i64 %42)
  %44 = load i64, i64* @PORT, align 8
  %45 = load i64, i64* @L_ADDRREG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outw(i16 signext 1, i64 %46)
  %48 = load i64, i64* @isa1, align 8
  %49 = trunc i64 %48 to i16
  %50 = load i64, i64* @PORT, align 8
  %51 = load i64, i64* @L_BUSIF, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outw(i16 signext %49, i64 %52)
  %54 = load i16, i16* @CSR0, align 2
  %55 = load i64, i64* @PORT, align 8
  %56 = load i64, i64* @L_ADDRREG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outw(i16 signext %54, i64 %57)
  br label %59

59:                                               ; preds = %30, %29, %18
  ret void
}

declare dso_local i32 @writereg(i32, i32) #1

declare dso_local i32 @outw(i16 signext, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
