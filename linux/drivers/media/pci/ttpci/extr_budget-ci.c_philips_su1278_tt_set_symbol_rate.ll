; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_su1278_tt_set_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_philips_su1278_tt_set_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @philips_su1278_tt_set_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_su1278_tt_set_symbol_rate(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = call i32 @stv0299_writereg(%struct.dvb_frontend* %7, i32 14, i32 68)
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 10000000
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = call i32 @stv0299_writereg(%struct.dvb_frontend* %12, i32 19, i32 151)
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %15 = call i32 @stv0299_writereg(%struct.dvb_frontend* %14, i32 20, i32 149)
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = call i32 @stv0299_writereg(%struct.dvb_frontend* %16, i32 21, i32 201)
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = call i32 @stv0299_writereg(%struct.dvb_frontend* %18, i32 23, i32 140)
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = call i32 @stv0299_writereg(%struct.dvb_frontend* %20, i32 26, i32 254)
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %23 = call i32 @stv0299_writereg(%struct.dvb_frontend* %22, i32 28, i32 127)
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %25 = call i32 @stv0299_writereg(%struct.dvb_frontend* %24, i32 45, i32 9)
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = call i32 @stv0299_writereg(%struct.dvb_frontend* %27, i32 19, i32 153)
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = call i32 @stv0299_writereg(%struct.dvb_frontend* %29, i32 20, i32 141)
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %32 = call i32 @stv0299_writereg(%struct.dvb_frontend* %31, i32 21, i32 206)
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %34 = call i32 @stv0299_writereg(%struct.dvb_frontend* %33, i32 23, i32 67)
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %36 = call i32 @stv0299_writereg(%struct.dvb_frontend* %35, i32 26, i32 29)
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = call i32 @stv0299_writereg(%struct.dvb_frontend* %37, i32 28, i32 18)
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = call i32 @stv0299_writereg(%struct.dvb_frontend* %39, i32 45, i32 5)
  br label %41

41:                                               ; preds = %26, %11
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %43 = call i32 @stv0299_writereg(%struct.dvb_frontend* %42, i32 14, i32 35)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = call i32 @stv0299_writereg(%struct.dvb_frontend* %44, i32 15, i32 148)
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %47 = call i32 @stv0299_writereg(%struct.dvb_frontend* %46, i32 16, i32 57)
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %49 = call i32 @stv0299_writereg(%struct.dvb_frontend* %48, i32 21, i32 201)
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = call i32 @stv0299_writereg(%struct.dvb_frontend* %50, i32 31, i32 %53)
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = call i32 @stv0299_writereg(%struct.dvb_frontend* %55, i32 32, i32 %58)
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 240
  %63 = call i32 @stv0299_writereg(%struct.dvb_frontend* %60, i32 33, i32 %62)
  ret i32 0
}

declare dso_local i32 @stv0299_writereg(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
