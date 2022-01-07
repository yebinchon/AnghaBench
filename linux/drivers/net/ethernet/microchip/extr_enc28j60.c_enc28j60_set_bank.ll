; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_set_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_set_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { i32 }

@BANK_MASK = common dso_local global i32 0, align 4
@EIE = common dso_local global i32 0, align 4
@ECON1 = common dso_local global i32 0, align 4
@ECON1_BSEL0 = common dso_local global i32 0, align 4
@ENC28J60_BIT_FIELD_SET = common dso_local global i32 0, align 4
@ENC28J60_BIT_FIELD_CLR = common dso_local global i32 0, align 4
@ECON1_BSEL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enc28j60_net*, i32)* @enc28j60_set_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc28j60_set_bank(%struct.enc28j60_net* %0, i32 %1) #0 {
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @BANK_MASK, align 4
  %8 = and i32 %6, %7
  %9 = ashr i32 %8, 5
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EIE, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ECON1, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %78

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ECON1_BSEL0, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %23 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ECON1_BSEL0, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ECON1_BSEL0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %35 = load i32, i32* @ENC28J60_BIT_FIELD_SET, align 4
  %36 = load i32, i32* @ECON1, align 4
  %37 = load i32, i32* @ECON1_BSEL0, align 4
  %38 = call i32 @spi_write_op(%struct.enc28j60_net* %34, i32 %35, i32 %36, i32 %37)
  br label %45

39:                                               ; preds = %28
  %40 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %41 = load i32, i32* @ENC28J60_BIT_FIELD_CLR, align 4
  %42 = load i32, i32* @ECON1, align 4
  %43 = load i32, i32* @ECON1_BSEL0, align 4
  %44 = call i32 @spi_write_op(%struct.enc28j60_net* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ECON1_BSEL1, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %51 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ECON1_BSEL1, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %49, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ECON1_BSEL1, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %63 = load i32, i32* @ENC28J60_BIT_FIELD_SET, align 4
  %64 = load i32, i32* @ECON1, align 4
  %65 = load i32, i32* @ECON1_BSEL1, align 4
  %66 = call i32 @spi_write_op(%struct.enc28j60_net* %62, i32 %63, i32 %64, i32 %65)
  br label %73

67:                                               ; preds = %56
  %68 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %69 = load i32, i32* @ENC28J60_BIT_FIELD_CLR, align 4
  %70 = load i32, i32* @ECON1, align 4
  %71 = load i32, i32* @ECON1_BSEL1, align 4
  %72 = call i32 @spi_write_op(%struct.enc28j60_net* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %61
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %77 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %17
  ret void
}

declare dso_local i32 @spi_write_op(%struct.enc28j60_net*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
