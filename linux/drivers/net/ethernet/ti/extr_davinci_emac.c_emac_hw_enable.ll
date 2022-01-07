; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i32, i64, i32, i32, i32 }

@EMAC_SOFTRESET = common dso_local global i32 0, align 4
@EMAC_DEF_TXPRIO_FIXED = common dso_local global i64 0, align 8
@EMAC_MACCONTROL_TXPTYPE = common dso_local global i32 0, align 4
@EMAC_MACCONTROL_GIGABITEN = common dso_local global i32 0, align 4
@EMAC_DEF_TXPACING_EN = common dso_local global i64 0, align 8
@EMAC_MACCONTROL_TXPACEEN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@EMAC_MACCONTROL = common dso_local global i32 0, align 4
@EMAC_DEF_PASS_CRC = common dso_local global i64 0, align 8
@EMAC_RXMBP_PASSCRC_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_QOS_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_QOSEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_NO_BUFF_CHAIN = common dso_local global i64 0, align 8
@EMAC_RXMBP_NOCHAIN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_MACCTRL_FRAME_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CMFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_SHORT_FRAME_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CSFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_ERROR_FRAME_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CEFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_PROM_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_CAFEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_PROM_CH = common dso_local global i32 0, align 4
@EMAC_RXMBP_CHMASK = common dso_local global i32 0, align 4
@EMAC_RXMBP_PROMCH_SHIFT = common dso_local global i32 0, align 4
@EMAC_DEF_BCAST_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_BROADEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_BCAST_CH = common dso_local global i32 0, align 4
@EMAC_RXMBP_BROADCH_SHIFT = common dso_local global i32 0, align 4
@EMAC_DEF_MCAST_EN = common dso_local global i64 0, align 8
@EMAC_RXMBP_MULTIEN_MASK = common dso_local global i32 0, align 4
@EMAC_DEF_MCAST_CH = common dso_local global i32 0, align 4
@EMAC_RXMBP_MULTICH_SHIFT = common dso_local global i32 0, align 4
@EMAC_RXMBPENABLE = common dso_local global i32 0, align 4
@EMAC_RXMAXLEN = common dso_local global i32 0, align 4
@EMAC_DEF_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@EMAC_RX_MAX_LEN_MASK = common dso_local global i32 0, align 4
@EMAC_RXBUFFEROFFSET = common dso_local global i32 0, align 4
@EMAC_DEF_BUFFER_OFFSET = common dso_local global i32 0, align 4
@EMAC_RX_BUFFER_OFFSET_MASK = common dso_local global i32 0, align 4
@EMAC_RXFILTERLOWTHRESH = common dso_local global i32 0, align 4
@EMAC_RXUNICASTCLEAR = common dso_local global i32 0, align 4
@EMAC_RX_UNICAST_CLEAR_ALL = common dso_local global i32 0, align 4
@EMAC_MACCONFIG = common dso_local global i32 0, align 4
@EMAC_MACINTMASKSET = common dso_local global i32 0, align 4
@EMAC_MAC_HOST_ERR_INTMASK_VAL = common dso_local global i32 0, align 4
@EMAC_DEF_RX_CH = common dso_local global i32 0, align 4
@EMAC_MACCONTROL_GMIIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_priv*)* @emac_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_hw_enable(%struct.emac_priv* %0) #0 {
  %2 = alloca %struct.emac_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.emac_priv* %0, %struct.emac_priv** %2, align 8
  %6 = load i32, i32* @EMAC_SOFTRESET, align 4
  %7 = call i32 @emac_write(i32 %6, i32 1)
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i32, i32* @EMAC_SOFTRESET, align 4
  %10 = call i32 @emac_read(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @cpu_relax()
  br label %8

14:                                               ; preds = %8
  %15 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %16 = call i32 @emac_int_disable(%struct.emac_priv* %15)
  %17 = load i64, i64* @EMAC_DEF_TXPRIO_FIXED, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EMAC_MACCONTROL_TXPTYPE, align 4
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %25 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1000
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EMAC_MACCONTROL_GIGABITEN, align 4
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %23, %32
  %34 = load i64, i64* @EMAC_DEF_TXPACING_EN, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EMAC_MACCONTROL_TXPACEEN, align 4
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %33, %40
  %42 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %43 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DUPLEX_FULL, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = or i32 %41, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @EMAC_MACCONTROL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @emac_write(i32 %50, i32 %51)
  %53 = load i64, i64* @EMAC_DEF_PASS_CRC, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @EMAC_RXMBP_PASSCRC_MASK, align 4
  br label %58

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load i64, i64* @EMAC_DEF_QOS_EN, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @EMAC_RXMBP_QOSEN_MASK, align 4
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %59, %66
  %68 = load i64, i64* @EMAC_DEF_NO_BUFF_CHAIN, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @EMAC_RXMBP_NOCHAIN_MASK, align 4
  br label %73

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %67, %74
  %76 = load i64, i64* @EMAC_DEF_MACCTRL_FRAME_EN, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @EMAC_RXMBP_CMFEN_MASK, align 4
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = or i32 %75, %82
  %84 = load i64, i64* @EMAC_DEF_SHORT_FRAME_EN, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @EMAC_RXMBP_CSFEN_MASK, align 4
  br label %89

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = or i32 %83, %90
  %92 = load i64, i64* @EMAC_DEF_ERROR_FRAME_EN, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EMAC_RXMBP_CEFEN_MASK, align 4
  br label %97

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = or i32 %91, %98
  %100 = load i64, i64* @EMAC_DEF_PROM_EN, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @EMAC_RXMBP_CAFEN_MASK, align 4
  br label %105

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  %107 = or i32 %99, %106
  %108 = load i32, i32* @EMAC_DEF_PROM_CH, align 4
  %109 = load i32, i32* @EMAC_RXMBP_CHMASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @EMAC_RXMBP_PROMCH_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %107, %112
  %114 = load i64, i64* @EMAC_DEF_BCAST_EN, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* @EMAC_RXMBP_BROADEN_MASK, align 4
  br label %119

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = or i32 %113, %120
  %122 = load i32, i32* @EMAC_DEF_BCAST_CH, align 4
  %123 = load i32, i32* @EMAC_RXMBP_CHMASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @EMAC_RXMBP_BROADCH_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = or i32 %121, %126
  %128 = load i64, i64* @EMAC_DEF_MCAST_EN, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %119
  %131 = load i32, i32* @EMAC_RXMBP_MULTIEN_MASK, align 4
  br label %133

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = or i32 %127, %134
  %136 = load i32, i32* @EMAC_DEF_MCAST_CH, align 4
  %137 = load i32, i32* @EMAC_RXMBP_CHMASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @EMAC_RXMBP_MULTICH_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %135, %140
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* @EMAC_RXMBPENABLE, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @emac_write(i32 %142, i32 %143)
  %145 = load i32, i32* @EMAC_RXMAXLEN, align 4
  %146 = load i32, i32* @EMAC_DEF_MAX_FRAME_SIZE, align 4
  %147 = load i32, i32* @EMAC_RX_MAX_LEN_MASK, align 4
  %148 = and i32 %146, %147
  %149 = call i32 @emac_write(i32 %145, i32 %148)
  %150 = load i32, i32* @EMAC_RXBUFFEROFFSET, align 4
  %151 = load i32, i32* @EMAC_DEF_BUFFER_OFFSET, align 4
  %152 = load i32, i32* @EMAC_RX_BUFFER_OFFSET_MASK, align 4
  %153 = and i32 %151, %152
  %154 = call i32 @emac_write(i32 %150, i32 %153)
  %155 = load i32, i32* @EMAC_RXFILTERLOWTHRESH, align 4
  %156 = call i32 @emac_write(i32 %155, i32 0)
  %157 = load i32, i32* @EMAC_RXUNICASTCLEAR, align 4
  %158 = load i32, i32* @EMAC_RX_UNICAST_CLEAR_ALL, align 4
  %159 = call i32 @emac_write(i32 %157, i32 %158)
  %160 = load i32, i32* @EMAC_MACCONFIG, align 4
  %161 = call i32 @emac_read(i32 %160)
  %162 = ashr i32 %161, 8
  %163 = and i32 %162, 255
  %164 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %165 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @EMAC_MACINTMASKSET, align 4
  %167 = load i32, i32* @EMAC_MAC_HOST_ERR_INTMASK_VAL, align 4
  %168 = call i32 @emac_write(i32 %166, i32 %167)
  %169 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %170 = load i32, i32* @EMAC_DEF_RX_CH, align 4
  %171 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %172 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @emac_setmac(%struct.emac_priv* %169, i32 %170, i32 %173)
  %175 = load i32, i32* @EMAC_MACCONTROL, align 4
  %176 = call i32 @emac_read(i32 %175)
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* @EMAC_MACCONTROL_GMIIEN, align 4
  %178 = load i32, i32* %3, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %3, align 4
  %180 = load i32, i32* @EMAC_MACCONTROL, align 4
  %181 = load i32, i32* %3, align 4
  %182 = call i32 @emac_write(i32 %180, i32 %181)
  %183 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %184 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %183, i32 0, i32 3
  %185 = call i32 @napi_enable(i32* %184)
  %186 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %187 = call i32 @emac_int_enable(%struct.emac_priv* %186)
  ret i32 0
}

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i32 @emac_read(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @emac_int_disable(%struct.emac_priv*) #1

declare dso_local i32 @emac_setmac(%struct.emac_priv*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @emac_int_enable(%struct.emac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
