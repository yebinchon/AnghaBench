; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i32, i32, i64, i32*, i32, i32, i64, i64, i64 }

@WBCIR_IRQ_NONE = common dso_local global i32 0, align 4
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@invert = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_STS = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CFG1 = common dso_local global i64 0, align 8
@WBCIR_IRTX_INV = common dso_local global i32 0, align 4
@WBCIR_REG_ECEIR_CCTL = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CTS = common dso_local global i64 0, align 8
@WBCIR_BANK_2 = common dso_local global i32 0, align 4
@WBCIR_EXT_ENABLE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_EXCR1 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_EXCR2 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_BGDL = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_BGDH = common dso_local global i64 0, align 8
@WBCIR_BANK_0 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_MCR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_LSR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_MSR = common dso_local global i64 0, align 8
@WBCIR_BANK_7 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RCCFG = common dso_local global i64 0, align 8
@WBCIR_BANK_4 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IRCR1 = common dso_local global i64 0, align 8
@WBCIR_BANK_5 = common dso_local global i32 0, align 4
@txandrx = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRCR2 = common dso_local global i64 0, align 8
@WBCIR_BANK_6 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IRCR3 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRRXDC = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRTXMC = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRCFG4 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_FCR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@WBCIR_RXSTATE_INACTIVE = common dso_local global i32 0, align 4
@WBCIR_TXSTATE_ACTIVE = common dso_local global i64 0, align 8
@WBCIR_TXSTATE_INACTIVE = common dso_local global i64 0, align 8
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*)* @wbcir_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_init_hw(%struct.wbcir_data* %0) #0 {
  %2 = alloca %struct.wbcir_data*, align 8
  store %struct.wbcir_data* %0, %struct.wbcir_data** %2, align 8
  %3 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %4 = load i32, i32* @WBCIR_IRQ_NONE, align 4
  %5 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %3, i32 %4)
  %6 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %7 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @invert, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 8, i32 0
  %15 = call i32 @wbcir_set_bits(i64 %10, i32 %14, i32 9)
  %16 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %17 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WBCIR_REG_WCEIR_STS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @wbcir_set_bits(i64 %20, i32 23, i32 23)
  %22 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %23 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @wbcir_set_bits(i64 %26, i32 0, i32 7)
  %28 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %29 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WBCIR_REG_WCEIR_CFG1, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @wbcir_set_bits(i64 %32, i32 74, i32 127)
  %34 = load i64, i64* @invert, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @WBCIR_IRTX_INV, align 4
  %38 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %39 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  br label %51

44:                                               ; preds = %1
  %45 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %46 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 0, i64 %49)
  br label %51

51:                                               ; preds = %44, %36
  %52 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %53 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WBCIR_REG_ECEIR_CTS, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 16, i64 %56)
  %58 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %59 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %61 = load i32, i32* @WBCIR_BANK_2, align 4
  %62 = call i32 @wbcir_select_bank(%struct.wbcir_data* %60, i32 %61)
  %63 = load i32, i32* @WBCIR_EXT_ENABLE, align 4
  %64 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %65 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WBCIR_REG_SP3_EXCR1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 %63, i64 %68)
  %70 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %71 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @WBCIR_REG_SP3_EXCR2, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 48, i64 %74)
  %76 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %77 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WBCIR_REG_SP3_BGDL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 15, i64 %80)
  %82 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %83 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WBCIR_REG_SP3_BGDH, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 0, i64 %86)
  %88 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %89 = load i32, i32* @WBCIR_BANK_0, align 4
  %90 = call i32 @wbcir_select_bank(%struct.wbcir_data* %88, i32 %89)
  %91 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %92 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @WBCIR_REG_SP3_MCR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i32 192, i64 %95)
  %97 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %98 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @WBCIR_REG_SP3_LSR, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @inb(i64 %101)
  %103 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %104 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @WBCIR_REG_SP3_MSR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @inb(i64 %107)
  %109 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %110 = load i32, i32* @WBCIR_BANK_7, align 4
  %111 = call i32 @wbcir_select_bank(%struct.wbcir_data* %109, i32 %110)
  %112 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %113 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @WBCIR_REG_SP3_RCCFG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outb(i32 144, i64 %116)
  %118 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %119 = load i32, i32* @WBCIR_BANK_4, align 4
  %120 = call i32 @wbcir_select_bank(%struct.wbcir_data* %118, i32 %119)
  %121 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %122 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WBCIR_REG_SP3_IRCR1, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb(i32 0, i64 %125)
  %127 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %128 = load i32, i32* @WBCIR_BANK_5, align 4
  %129 = call i32 @wbcir_select_bank(%struct.wbcir_data* %127, i32 %128)
  %130 = load i64, i64* @txandrx, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 3, i32 2
  %134 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %135 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @WBCIR_REG_SP3_IRCR2, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outb(i32 %133, i64 %138)
  %140 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %141 = load i32, i32* @WBCIR_BANK_6, align 4
  %142 = call i32 @wbcir_select_bank(%struct.wbcir_data* %140, i32 %141)
  %143 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %144 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WBCIR_REG_SP3_IRCR3, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @outb(i32 32, i64 %147)
  %149 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %150 = load i32, i32* @WBCIR_BANK_7, align 4
  %151 = call i32 @wbcir_select_bank(%struct.wbcir_data* %149, i32 %150)
  %152 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %153 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @WBCIR_REG_SP3_IRRXDC, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @outb(i32 242, i64 %156)
  %158 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %159 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @WBCIR_REG_SP3_IRTXMC, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @outb(i32 105, i64 %162)
  %164 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %165 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %164, i32 0, i32 1
  store i32 36000, i32* %165, align 4
  %166 = load i64, i64* @invert, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %51
  %169 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %170 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @WBCIR_REG_SP3_IRCFG4, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @outb(i32 16, i64 %173)
  br label %182

175:                                              ; preds = %51
  %176 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %177 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @WBCIR_REG_SP3_IRCFG4, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outb(i32 0, i64 %180)
  br label %182

182:                                              ; preds = %175, %168
  %183 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %184 = load i32, i32* @WBCIR_BANK_0, align 4
  %185 = call i32 @wbcir_select_bank(%struct.wbcir_data* %183, i32 %184)
  %186 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %187 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @WBCIR_REG_SP3_FCR, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @outb(i32 151, i64 %190)
  %192 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %193 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @outb(i32 224, i64 %196)
  %198 = load i32, i32* @WBCIR_RXSTATE_INACTIVE, align 4
  %199 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %200 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %202 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @wbcir_idle_rx(i32 %203, i32 1)
  %205 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %206 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @WBCIR_TXSTATE_ACTIVE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %182
  %211 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %212 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @kfree(i32* %213)
  %215 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %216 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %215, i32 0, i32 3
  store i32* null, i32** %216, align 8
  %217 = load i64, i64* @WBCIR_TXSTATE_INACTIVE, align 8
  %218 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %219 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %210, %182
  %221 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %222 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %223 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @wbcir_set_irqmask(%struct.wbcir_data* %221, i32 %224)
  ret void
}

declare dso_local i32 @wbcir_set_irqmask(%struct.wbcir_data*, i32) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @wbcir_idle_rx(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
