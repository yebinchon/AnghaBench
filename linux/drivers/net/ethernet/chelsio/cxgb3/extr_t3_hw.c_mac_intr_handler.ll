; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_mac_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_mac_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cmac = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.cmac }

@A_XGM_INT_CAUSE = common dso_local global i64 0, align 8
@F_RXFIFO_OVERFLOW = common dso_local global i32 0, align 4
@M_TXFIFO_PRTY_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"port%d: MAC TX FIFO parity error\0A\00", align 1
@M_RXFIFO_PRTY_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"port%d: MAC RX FIFO parity error\0A\00", align 1
@F_TXFIFO_UNDERRUN = common dso_local global i32 0, align 4
@M_SERDES_LOS = common dso_local global i32 0, align 4
@F_XAUIPCSCTCERR = common dso_local global i32 0, align 4
@F_XAUIPCSALIGNCHANGE = common dso_local global i32 0, align 4
@F_XGM_INT = common dso_local global i32 0, align 4
@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8
@XGM_INTR_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @mac_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_intr_handler(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_4__* @adap2pinfo(%struct.adapter* %7, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.cmac* %10, %struct.cmac** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %13 = load %struct.cmac*, %struct.cmac** %5, align 8
  %14 = getelementptr inbounds %struct.cmac, %struct.cmac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @t3_read_reg(%struct.adapter* %11, i64 %16)
  %18 = load i32, i32* @F_RXFIFO_OVERFLOW, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @M_TXFIFO_PRTY_ERR, align 4
  %23 = call i32 @V_TXFIFO_PRTY_ERR(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.cmac*, %struct.cmac** %5, align 8
  %28 = getelementptr inbounds %struct.cmac, %struct.cmac* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CH_ALERT(%struct.adapter* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %26, %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @M_RXFIFO_PRTY_ERR, align 4
  %38 = call i32 @V_RXFIFO_PRTY_ERR(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.cmac*, %struct.cmac** %5, align 8
  %43 = getelementptr inbounds %struct.cmac, %struct.cmac* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CH_ALERT(%struct.adapter* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @F_TXFIFO_UNDERRUN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.cmac*, %struct.cmac** %5, align 8
  %57 = getelementptr inbounds %struct.cmac, %struct.cmac* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @F_RXFIFO_OVERFLOW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.cmac*, %struct.cmac** %5, align 8
  %68 = getelementptr inbounds %struct.cmac, %struct.cmac* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @M_SERDES_LOS, align 4
  %75 = call i32 @V_SERDES_LOS(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.cmac*, %struct.cmac** %5, align 8
  %80 = getelementptr inbounds %struct.cmac, %struct.cmac* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @F_XAUIPCSCTCERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.cmac*, %struct.cmac** %5, align 8
  %91 = getelementptr inbounds %struct.cmac, %struct.cmac* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @F_XAUIPCSALIGNCHANGE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.cmac*, %struct.cmac** %5, align 8
  %102 = getelementptr inbounds %struct.cmac, %struct.cmac* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @F_XGM_INT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %114 = load %struct.cmac*, %struct.cmac** %5, align 8
  %115 = getelementptr inbounds %struct.cmac, %struct.cmac* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load i32, i32* @F_XGM_INT, align 4
  %119 = call i32 @t3_set_reg_field(%struct.adapter* %112, i64 %117, i32 %118, i32 0)
  %120 = load %struct.cmac*, %struct.cmac** %5, align 8
  %121 = getelementptr inbounds %struct.cmac, %struct.cmac* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.adapter*, %struct.adapter** %3, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @t3_os_link_fault_handler(%struct.adapter* %125, i32 %126)
  br label %128

128:                                              ; preds = %111, %106
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @XGM_INTR_FATAL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.adapter*, %struct.adapter** %3, align 8
  %135 = call i32 @t3_fatal_err(%struct.adapter* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %139 = load %struct.cmac*, %struct.cmac** %5, align 8
  %140 = getelementptr inbounds %struct.cmac, %struct.cmac* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @t3_write_reg(%struct.adapter* %137, i64 %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  ret i32 %147
}

declare dso_local %struct.TYPE_4__* @adap2pinfo(%struct.adapter*, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @V_TXFIFO_PRTY_ERR(i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*, i32) #1

declare dso_local i32 @V_RXFIFO_PRTY_ERR(i32) #1

declare dso_local i32 @V_SERDES_LOS(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @t3_os_link_fault_handler(%struct.adapter*, i32) #1

declare dso_local i32 @t3_fatal_err(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
