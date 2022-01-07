; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_interrupt_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_interrupt_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AR_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_IMR_TXERR = common dso_local global i32 0, align 4
@AR_IMR_TXURN = common dso_local global i32 0, align 4
@AR_IMR_RXERR = common dso_local global i32 0, align 4
@AR_IMR_RXORN = common dso_local global i32 0, align 4
@AR_IMR_BCNMISC = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_FATAL = common dso_local global i32 0, align 4
@AR_IMR_RXOK_HP = common dso_local global i32 0, align 4
@AR_IMR_RXINTM = common dso_local global i32 0, align 4
@AR_IMR_RXMINTR = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_RXINTM = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_RXOK_LP = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_RXOK = common dso_local global i32 0, align 4
@AR_IMR_RXOK = common dso_local global i32 0, align 4
@AR_IMR_TXINTM = common dso_local global i32 0, align 4
@AR_IMR_TXMINTR = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_TXINTM = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_TXMINTR = common dso_local global i32 0, align 4
@AR_IMR_TXOK = common dso_local global i32 0, align 4
@AR_INTCFG_MSI_TXOK = common dso_local global i32 0, align 4
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_S2_GTT = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@AR_PCIE_MSI = common dso_local global i32 0, align 4
@AR_PCIE_MSI_HW_DBI_WR_EN = common dso_local global i32 0, align 4
@AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64 = common dso_local global i32 0, align 4
@AR_INTCFG = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"value of AR_INTCFG=0x%X, msi_cfg=0x%X\0A\00", align 1
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_PRIO_ASYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_PRIO_ASYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_PRIO_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_PRIO_SYNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ath9k_hw_init_interrupt_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_interrupt_masks(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @AR_INTR_SYNC_DEFAULT, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @AR_IMR_TXERR, align 4
  %10 = load i32, i32* @AR_IMR_TXURN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AR_IMR_RXERR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AR_IMR_RXORN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = call i64 @AR_SREV_9340(%struct.ath_hw* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i64 @AR_SREV_9550(%struct.ath_hw* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i64 @AR_SREV_9531(%struct.ath_hw* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = call i64 @AR_SREV_9561(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %25, %21, %2
  %34 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %38
  %43 = load i32, i32* @AR_IMR_RXOK_HP, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load i32, i32* @AR_IMR_RXINTM, align 4
  %53 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @AR_INTCFG_MSI_RXINTM, align 4
  %58 = load i32, i32* @AR_INTCFG_MSI_RXMINTR, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %42
  %63 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @AR_INTCFG_MSI_RXOK, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %51
  br label %95

70:                                               ; preds = %38
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load i32, i32* @AR_IMR_RXINTM, align 4
  %78 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @AR_INTCFG_MSI_RXINTM, align 4
  %83 = load i32, i32* @AR_INTCFG_MSI_RXMINTR, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %94

87:                                               ; preds = %70
  %88 = load i32, i32* @AR_IMR_RXOK, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @AR_INTCFG_MSI_RXOK, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %87, %76
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load i32, i32* @AR_IMR_TXINTM, align 4
  %103 = load i32, i32* @AR_IMR_TXMINTR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @AR_INTCFG_MSI_TXINTM, align 4
  %108 = load i32, i32* @AR_INTCFG_MSI_TXMINTR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %119

112:                                              ; preds = %95
  %113 = load i32, i32* @AR_IMR_TXOK, align 4
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* @AR_INTCFG_MSI_TXOK, align 4
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %112, %101
  %120 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %121 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %120)
  %122 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %123 = load i32, i32* @AR_IMR, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @REG_WRITE(%struct.ath_hw* %122, i32 %123, i32 %124)
  %126 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %127 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %128 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %132 = load i32, i32* @AR_IMR_S2, align 4
  %133 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @REG_WRITE(%struct.ath_hw* %131, i32 %132, i32 %135)
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %119
  %142 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %143 = load i32, i32* @AR_PCIE_MSI, align 4
  %144 = call i32 @REG_READ(%struct.ath_hw* %142, i32 %143)
  %145 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %146 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @AR_PCIE_MSI_HW_DBI_WR_EN, align 4
  %148 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %149 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @AR_PCIE_MSI_HW_INT_PENDING_ADDR_MSI_64, align 4
  %153 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %154 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %158 = load i32, i32* @AR_INTCFG, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @REG_WRITE(%struct.ath_hw* %157, i32 %158, i32 %159)
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = call i32 @ath9k_hw_common(%struct.ath_hw* %161)
  %163 = load i32, i32* @ANY, align 4
  %164 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %165 = load i32, i32* @AR_INTCFG, align 4
  %166 = call i32 @REG_READ(%struct.ath_hw* %164, i32 %165)
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @ath_dbg(i32 %162, i32 %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %141, %119
  %170 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %171 = call i32 @AR_SREV_9100(%struct.ath_hw* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %169
  %174 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %175 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %176 = call i32 @REG_WRITE(%struct.ath_hw* %174, i32 %175, i32 -1)
  %177 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %178 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @REG_WRITE(%struct.ath_hw* %177, i32 %178, i32 %179)
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = load i32, i32* @AR_INTR_SYNC_MASK, align 4
  %183 = call i32 @REG_WRITE(%struct.ath_hw* %181, i32 %182, i32 0)
  br label %184

184:                                              ; preds = %173, %169
  %185 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %186 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %185)
  %187 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %188 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %192 = load i32, i32* @AR_INTR_PRIO_ASYNC_ENABLE, align 4
  %193 = call i32 @REG_WRITE(%struct.ath_hw* %191, i32 %192, i32 0)
  %194 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %195 = load i32, i32* @AR_INTR_PRIO_ASYNC_MASK, align 4
  %196 = call i32 @REG_WRITE(%struct.ath_hw* %194, i32 %195, i32 0)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = load i32, i32* @AR_INTR_PRIO_SYNC_ENABLE, align 4
  %199 = call i32 @REG_WRITE(%struct.ath_hw* %197, i32 %198, i32 0)
  %200 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %201 = load i32, i32* @AR_INTR_PRIO_SYNC_MASK, align 4
  %202 = call i32 @REG_WRITE(%struct.ath_hw* %200, i32 %201, i32 0)
  br label %203

203:                                              ; preds = %190, %184
  ret void
}

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
