; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64, i32 }

@REG_TX_CFG = common dso_local global i64 0, align 8
@TX_CFG_DMA_EN = common dso_local global i32 0, align 4
@REG_RX_CFG = common dso_local global i64 0, align 8
@RX_CFG_DMA_EN = common dso_local global i32 0, align 4
@REG_MAC_TX_CFG = common dso_local global i64 0, align 8
@MAC_TX_CFG_EN = common dso_local global i32 0, align 4
@REG_MAC_RX_CFG = common dso_local global i64 0, align 8
@MAC_RX_CFG_EN = common dso_local global i32 0, align 4
@STOP_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"enabling mac failed [tx:%08x:%08x]\0A\00", align 1
@REG_MIF_STATE_MACHINE = common dso_local global i64 0, align 8
@REG_MAC_STATE_MACHINE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"enabling mac failed [%s:%08x:%08x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tx,rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@REG_RX_KICK = common dso_local global i64 0, align 8
@REG_RX_COMP_TAIL = common dso_local global i64 0, align 8
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@N_RX_DESC_RINGS = common dso_local global i32 0, align 4
@REG_PLUS_RX_KICK1 = common dso_local global i64 0, align 8
@N_RX_COMP_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_start_dma(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cas*, %struct.cas** %2, align 8
  %7 = getelementptr inbounds %struct.cas, %struct.cas* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_TX_CFG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  %12 = load i32, i32* @TX_CFG_DMA_EN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.cas*, %struct.cas** %2, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_TX_CFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.cas*, %struct.cas** %2, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_RX_CFG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* @RX_CFG_DMA_EN, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.cas*, %struct.cas** %2, align 8
  %31 = getelementptr inbounds %struct.cas, %struct.cas* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REG_RX_CFG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.cas*, %struct.cas** %2, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_MAC_TX_CFG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load i32, i32* @MAC_TX_CFG_EN, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.cas*, %struct.cas** %2, align 8
  %46 = getelementptr inbounds %struct.cas, %struct.cas* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_MAC_TX_CFG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.cas*, %struct.cas** %2, align 8
  %52 = getelementptr inbounds %struct.cas, %struct.cas* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  %57 = load i32, i32* @MAC_RX_CFG_EN, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.cas*, %struct.cas** %2, align 8
  %61 = getelementptr inbounds %struct.cas, %struct.cas* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* @STOP_TRIES, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %83, %1
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %3, align 4
  %70 = icmp sgt i32 %68, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.cas*, %struct.cas** %2, align 8
  %73 = getelementptr inbounds %struct.cas, %struct.cas* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @REG_MAC_TX_CFG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readl(i64 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @MAC_TX_CFG_EN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %85

83:                                               ; preds = %71
  %84 = call i32 @udelay(i32 10)
  br label %67

85:                                               ; preds = %82, %67
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i32, i32* @STOP_TRIES, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %127, %89
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %3, align 4
  %94 = icmp sgt i32 %92, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load %struct.cas*, %struct.cas** %2, align 8
  %97 = getelementptr inbounds %struct.cas, %struct.cas* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readl(i64 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @MAC_RX_CFG_EN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %95
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load %struct.cas*, %struct.cas** %2, align 8
  %111 = getelementptr inbounds %struct.cas, %struct.cas* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.cas*, %struct.cas** %2, align 8
  %114 = getelementptr inbounds %struct.cas, %struct.cas* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @REG_MIF_STATE_MACHINE, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl(i64 %117)
  %119 = load %struct.cas*, %struct.cas** %2, align 8
  %120 = getelementptr inbounds %struct.cas, %struct.cas* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @REG_MAC_STATE_MACHINE, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl(i64 %123)
  %125 = call i32 (i32, i8*, ...) @netdev_err(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %124)
  br label %126

126:                                              ; preds = %109, %106
  br label %150

127:                                              ; preds = %95
  %128 = call i32 @udelay(i32 10)
  br label %91

129:                                              ; preds = %91
  %130 = load %struct.cas*, %struct.cas** %2, align 8
  %131 = getelementptr inbounds %struct.cas, %struct.cas* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %137 = load %struct.cas*, %struct.cas** %2, align 8
  %138 = getelementptr inbounds %struct.cas, %struct.cas* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @REG_MIF_STATE_MACHINE, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @readl(i64 %141)
  %143 = load %struct.cas*, %struct.cas** %2, align 8
  %144 = getelementptr inbounds %struct.cas, %struct.cas* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @REG_MAC_STATE_MACHINE, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @readl(i64 %147)
  %149 = call i32 (i32, i8*, ...) @netdev_err(i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %136, i32 %142, i32 %148)
  br label %150

150:                                              ; preds = %129, %126
  %151 = load %struct.cas*, %struct.cas** %2, align 8
  %152 = call i32 @cas_unmask_intr(%struct.cas* %151)
  %153 = call i32 @RX_DESC_RINGN_SIZE(i32 0)
  %154 = sub nsw i32 %153, 4
  %155 = load %struct.cas*, %struct.cas** %2, align 8
  %156 = getelementptr inbounds %struct.cas, %struct.cas* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @REG_RX_KICK, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writel(i32 %154, i64 %159)
  %161 = load %struct.cas*, %struct.cas** %2, align 8
  %162 = getelementptr inbounds %struct.cas, %struct.cas* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @REG_RX_COMP_TAIL, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 0, i64 %165)
  %167 = load %struct.cas*, %struct.cas** %2, align 8
  %168 = getelementptr inbounds %struct.cas, %struct.cas* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %202

173:                                              ; preds = %150
  %174 = load i32, i32* @N_RX_DESC_RINGS, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = call i32 @RX_DESC_RINGN_SIZE(i32 1)
  %178 = sub nsw i32 %177, 4
  %179 = load %struct.cas*, %struct.cas** %2, align 8
  %180 = getelementptr inbounds %struct.cas, %struct.cas* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @REG_PLUS_RX_KICK1, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  br label %185

185:                                              ; preds = %176, %173
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %198, %185
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @N_RX_COMP_RINGS, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load %struct.cas*, %struct.cas** %2, align 8
  %192 = getelementptr inbounds %struct.cas, %struct.cas* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = call i64 @REG_PLUS_RX_COMPN_TAIL(i32 %194)
  %196 = add nsw i64 %193, %195
  %197 = call i32 @writel(i32 0, i64 %196)
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %186

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %150
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @cas_unmask_intr(%struct.cas*) #1

declare dso_local i32 @RX_DESC_RINGN_SIZE(i32) #1

declare dso_local i64 @REG_PLUS_RX_COMPN_TAIL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
