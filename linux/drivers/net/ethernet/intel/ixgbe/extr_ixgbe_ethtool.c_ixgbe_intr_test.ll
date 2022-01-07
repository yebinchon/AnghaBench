; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_intr_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i64, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@IXGBE_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@ixgbe_test_intr = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_EICS = common dso_local global i32 0, align 4
@IXGBE_EIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32*)* @ixgbe_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_intr_test(%struct.ixgbe_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 5
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %197

25:                                               ; preds = %2
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IXGBE_FLAG_MSI_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ixgbe_test_intr, align 4
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call i64 @request_irq(i32 %33, i32 %34, i32 0, i32 %37, %struct.net_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  store i32 1, i32* %42, align 4
  store i32 -1, i32* %3, align 4
  br label %197

43:                                               ; preds = %32
  br label %69

44:                                               ; preds = %25
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ixgbe_test_intr, align 4
  %47 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = call i64 @request_irq(i32 %45, i32 %46, i32 %47, i32 %50, %struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %68

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ixgbe_test_intr, align 4
  %58 = load i32, i32* @IRQF_SHARED, align 4
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call i64 @request_irq(i32 %56, i32 %57, i32 %58, i32 %61, %struct.net_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32*, i32** %5, align 8
  store i32 1, i32* %66, align 4
  store i32 -1, i32* %3, align 4
  br label %197

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @hw, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @e_info(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 2
  %79 = load i32, i32* @IXGBE_EIMC, align 4
  %80 = call i32 @IXGBE_WRITE_REG(i32* %78, i32 %79, i32 -1)
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %81, i32 0, i32 2
  %83 = call i32 @IXGBE_WRITE_FLUSH(i32* %82)
  %84 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %85

85:                                               ; preds = %180, %70
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %88, label %183

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BIT(i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %88
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 2
  %98 = load i32, i32* @IXGBE_EIMC, align 4
  %99 = load i32, i32* %7, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %100, 32767
  %102 = call i32 @IXGBE_WRITE_REG(i32* %97, i32 %98, i32 %101)
  %103 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %103, i32 0, i32 2
  %105 = load i32, i32* @IXGBE_EICS, align 4
  %106 = load i32, i32* %7, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %107, 32767
  %109 = call i32 @IXGBE_WRITE_REG(i32* %104, i32 %105, i32 %108)
  %110 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %110, i32 0, i32 2
  %112 = call i32 @IXGBE_WRITE_FLUSH(i32* %111)
  %113 = call i32 @usleep_range(i32 10000, i32 20000)
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %93
  %121 = load i32*, i32** %5, align 8
  store i32 3, i32* %121, align 4
  br label %183

122:                                              ; preds = %93
  br label %123

123:                                              ; preds = %122, %88
  %124 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %125 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %126, i32 0, i32 2
  %128 = load i32, i32* @IXGBE_EIMS, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @IXGBE_WRITE_REG(i32* %127, i32 %128, i32 %129)
  %131 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %132 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %131, i32 0, i32 2
  %133 = load i32, i32* @IXGBE_EICS, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @IXGBE_WRITE_REG(i32* %132, i32 %133, i32 %134)
  %136 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %137 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %136, i32 0, i32 2
  %138 = call i32 @IXGBE_WRITE_FLUSH(i32* %137)
  %139 = call i32 @usleep_range(i32 10000, i32 20000)
  %140 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %141 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %123
  %147 = load i32*, i32** %5, align 8
  store i32 4, i32* %147, align 4
  br label %183

148:                                              ; preds = %123
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %179, label %151

151:                                              ; preds = %148
  %152 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %153 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  %154 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %155 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %154, i32 0, i32 2
  %156 = load i32, i32* @IXGBE_EIMC, align 4
  %157 = load i32, i32* %7, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %158, 32767
  %160 = call i32 @IXGBE_WRITE_REG(i32* %155, i32 %156, i32 %159)
  %161 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %162 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %161, i32 0, i32 2
  %163 = load i32, i32* @IXGBE_EICS, align 4
  %164 = load i32, i32* %7, align 4
  %165 = xor i32 %164, -1
  %166 = and i32 %165, 32767
  %167 = call i32 @IXGBE_WRITE_REG(i32* %162, i32 %163, i32 %166)
  %168 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %169 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %168, i32 0, i32 2
  %170 = call i32 @IXGBE_WRITE_FLUSH(i32* %169)
  %171 = call i32 @usleep_range(i32 10000, i32 20000)
  %172 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %173 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %151
  %177 = load i32*, i32** %5, align 8
  store i32 5, i32* %177, align 4
  br label %183

178:                                              ; preds = %151
  br label %179

179:                                              ; preds = %178, %148
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %85

183:                                              ; preds = %176, %146, %120, %85
  %184 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %185 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %184, i32 0, i32 2
  %186 = load i32, i32* @IXGBE_EIMC, align 4
  %187 = call i32 @IXGBE_WRITE_REG(i32* %185, i32 %186, i32 -1)
  %188 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %189 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %188, i32 0, i32 2
  %190 = call i32 @IXGBE_WRITE_FLUSH(i32* %189)
  %191 = call i32 @usleep_range(i32 10000, i32 20000)
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = call i32 @free_irq(i32 %192, %struct.net_device* %193)
  %195 = load i32*, i32** %5, align 8
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %183, %65, %41, %24
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @e_info(i32, i8*, i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
