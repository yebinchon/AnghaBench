; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_phyAgereSpecificInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_phyAgereSpecificInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"enabling Agere specific PHY\0A\00", align 1
@PHYAddr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*, i32)* @phyAgereSpecificInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phyAgereSpecificInit(%struct.ql3_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @netdev_info(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %9, i32 0, i32 6464, i32 %10)
  %12 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %12, i32 18, i32 33806, i32 %13)
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %15, i32 16, i32 34821, i32 %16)
  %18 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %18, i32 17, i32 61502, i32 %19)
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %21, i32 16, i32 34822, i32 %22)
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %24, i32 17, i32 62, i32 %25)
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %27, i32 16, i32 34823, i32 %28)
  %30 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %30, i32 17, i32 7936, i32 %31)
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %33, i32 16, i32 10246, i32 %34)
  %36 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %37 = load i32*, i32** @PHYAddr, align 8
  %38 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = or i32 32, %43
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ql_mii_write_reg_ex(%struct.ql3_adapter* %36, i32 17, i32 %44, i32 %45)
  %47 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %48 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %47, i32 18, i32 33802)
  %49 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %50 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %49, i32 0, i32 4416)
  %51 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %52 = call i32 @ql_mii_write_reg(%struct.ql3_adapter* %51, i32 28, i32 64240)
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @ql_mii_write_reg_ex(%struct.ql3_adapter*, i32, i32, i32) #1

declare dso_local i32 @ql_mii_write_reg(%struct.ql3_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
