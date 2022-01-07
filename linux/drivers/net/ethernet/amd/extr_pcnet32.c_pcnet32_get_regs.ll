; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ethtool_regs = type { i32 }
%struct.pcnet32_private = type { i32, i32, %struct.pcnet32_access*, i64 }
%struct.pcnet32_access = type { i32 (i64, i32)*, i64 (i64, i32)*, i32 (i64, i32, i32)* }

@CSR0 = common dso_local global i32 0, align 4
@CSR0_STOP = common dso_local global i32 0, align 4
@PCNET32_MAX_PHYS = common dso_local global i32 0, align 4
@PCNET32_REGS_PER_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @pcnet32_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcnet32_private*, align 8
  %11 = alloca %struct.pcnet32_access*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %17)
  store %struct.pcnet32_private* %18, %struct.pcnet32_private** %10, align 8
  %19 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %20 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %19, i32 0, i32 2
  %21 = load %struct.pcnet32_access*, %struct.pcnet32_access** %20, align 8
  store %struct.pcnet32_access* %21, %struct.pcnet32_access** %11, align 8
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %26 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %25, i32 0, i32 1
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.pcnet32_access*, %struct.pcnet32_access** %11, align 8
  %30 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %29, i32 0, i32 0
  %31 = load i32 (i64, i32)*, i32 (i64, i32)** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* @CSR0, align 4
  %34 = call i32 %31(i64 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @CSR0_STOP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @pcnet32_suspend(%struct.net_device* %40, i64* %13, i32 1)
  br label %42

42:                                               ; preds = %39, %3
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %54, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @inw(i64 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %7, align 4
  br label %43

57:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 90
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.pcnet32_access*, %struct.pcnet32_access** %11, align 8
  %63 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %62, i32 0, i32 0
  %64 = load i32 (i64, i32)*, i32 (i64, i32)** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 %64(i64 %65, i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.pcnet32_access*, %struct.pcnet32_access** %11, align 8
  %75 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %74, i32 0, i32 0
  %76 = load i32 (i64, i32)*, i32 (i64, i32)** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 %76(i64 %77, i32 112)
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %81 = load %struct.pcnet32_access*, %struct.pcnet32_access** %11, align 8
  %82 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %81, i32 0, i32 0
  %83 = load i32 (i64, i32)*, i32 (i64, i32)** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 %83(i64 %84, i32 114)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %101, %73
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 30
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.pcnet32_access*, %struct.pcnet32_access** %11, align 8
  %93 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %92, i32 0, i32 1
  %94 = load i64 (i64, i32)*, i64 (i64, i32)** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i64 %94(i64 %95, i32 %96)
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %88

104:                                              ; preds = %88
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  store i32 0, i32* %105, align 4
  store i32 31, i32* %7, align 4
  br label %107

107:                                              ; preds = %120, %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 36
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load %struct.pcnet32_access*, %struct.pcnet32_access** %11, align 8
  %112 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %111, i32 0, i32 1
  %113 = load i64 (i64, i32)*, i64 (i64, i32)** %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i64 %113(i64 %114, i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %125 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %177

128:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %173, %128
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @PCNET32_MAX_PHYS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %176

133:                                              ; preds = %129
  %134 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %135 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = shl i32 1, %137
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %168, %141
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @PCNET32_REGS_PER_PHY, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %171

146:                                              ; preds = %142
  %147 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %148 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %147, i32 0, i32 2
  %149 = load %struct.pcnet32_access*, %struct.pcnet32_access** %148, align 8
  %150 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %149, i32 0, i32 2
  %151 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i32, i32* %14, align 4
  %154 = shl i32 %153, 5
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %154, %155
  %157 = call i32 %151(i64 %152, i32 33, i32 %156)
  %158 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %159 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %158, i32 0, i32 2
  %160 = load %struct.pcnet32_access*, %struct.pcnet32_access** %159, align 8
  %161 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %160, i32 0, i32 1
  %162 = load i64 (i64, i32)*, i64 (i64, i32)** %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = call i64 %162(i64 %163, i32 34)
  %165 = trunc i64 %164 to i32
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  br label %168

168:                                              ; preds = %146
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %142

171:                                              ; preds = %142
  br label %172

172:                                              ; preds = %171, %133
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %129

176:                                              ; preds = %129
  br label %177

177:                                              ; preds = %176, %123
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @CSR0_STOP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %184 = load i64, i64* %12, align 8
  %185 = call i32 @pcnet32_clr_suspend(%struct.pcnet32_private* %183, i64 %184)
  br label %186

186:                                              ; preds = %182, %177
  %187 = load %struct.pcnet32_private*, %struct.pcnet32_private** %10, align 8
  %188 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %187, i32 0, i32 1
  %189 = load i64, i64* %13, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pcnet32_suspend(%struct.net_device*, i64*, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @pcnet32_clr_suspend(%struct.pcnet32_private*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
