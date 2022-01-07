; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_jazzsonic.c_sonic_probe1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_jazzsonic.c_sonic_probe1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32, i32* }
%struct.sonic_local = type { i32, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SONIC_MEM_SIZE = common dso_local global i32 0, align 4
@jazz_sonic_string = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SONIC_SR = common dso_local global i64 0, align 8
@known_revisions = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"SONIC ethernet controller not found (0x%4x)\0A\00", align 1
@SONIC_CMD = common dso_local global i32 0, align 4
@SONIC_CR_RST = common dso_local global i32 0, align 4
@SONIC_CEP = common dso_local global i32 0, align 4
@SONIC_CAP0 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SONIC_BITMODE32 = common dso_local global i32 0, align 4
@SIZEOF_SONIC_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIZEOF_SONIC_CDA = common dso_local global i32 0, align 4
@SIZEOF_SONIC_TD = common dso_local global i32 0, align 4
@SONIC_NUM_TDS = common dso_local global i32 0, align 4
@SIZEOF_SONIC_RD = common dso_local global i32 0, align 4
@SONIC_NUM_RDS = common dso_local global i32 0, align 4
@sonic_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@SONIC_CRCT = common dso_local global i32 0, align 4
@SONIC_FAET = common dso_local global i32 0, align 4
@SONIC_MPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sonic_probe1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonic_probe1(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sonic_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %9)
  store %struct.sonic_local* %10, %struct.sonic_local** %6, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SONIC_MEM_SIZE, align 4
  %17 = load i32, i32* @jazz_sonic_string, align 4
  %18 = call i32 @request_mem_region(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %233

23:                                               ; preds = %1
  %24 = load i64, i64* @SONIC_SR, align 8
  %25 = call i32 @SONIC_READ(i64 %24)
  store i32 %25, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %43, %23
  %27 = load i32*, i32** @known_revisions, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 65535
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32*, i32** @known_revisions, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %38, %39
  br label %41

41:                                               ; preds = %33, %26
  %42 = phi i1 [ false, %26 ], [ %40, %33 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %26

46:                                               ; preds = %41
  %47 = load i32*, i32** @known_revisions, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 65535
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %226

56:                                               ; preds = %46
  %57 = load i32, i32* @SONIC_CMD, align 4
  %58 = load i32, i32* @SONIC_CR_RST, align 4
  %59 = call i32 @SONIC_WRITE(i32 %57, i32 %58)
  %60 = load i32, i32* @SONIC_CEP, align 4
  %61 = call i32 @SONIC_WRITE(i32 %60, i32 0)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %89, %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = load i64, i64* @SONIC_CAP0, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = call i32 @SONIC_READ(i64 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %71, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = lshr i32 %79, 8
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32 %80, i32* %88, align 4
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %62

92:                                               ; preds = %62
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @SONIC_BITMODE32, align 4
  %96 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %97 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %99 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @SIZEOF_SONIC_DESC, align 4
  %102 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %103 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @SONIC_BUS_SCALE(i32 %104)
  %106 = mul nsw i32 %101, %105
  %107 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %108 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %107, i32 0, i32 5
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i32* @dma_alloc_coherent(i32 %100, i32 %106, i64* %108, i32 %109)
  %111 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %112 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %111, i32 0, i32 10
  store i32* %110, i32** %112, align 8
  %113 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %114 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %113, i32 0, i32 10
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %92
  br label %226

118:                                              ; preds = %92
  %119 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %120 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %119, i32 0, i32 10
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %123 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %122, i32 0, i32 9
  store i32* %121, i32** %123, align 8
  %124 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %125 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %124, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @SIZEOF_SONIC_CDA, align 4
  %128 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %129 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @SONIC_BUS_SCALE(i32 %130)
  %132 = mul nsw i32 %127, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %126, i64 %133
  %135 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %136 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %135, i32 0, i32 8
  store i32* %134, i32** %136, align 8
  %137 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %138 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @SIZEOF_SONIC_TD, align 4
  %141 = load i32, i32* @SONIC_NUM_TDS, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %144 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @SONIC_BUS_SCALE(i32 %145)
  %147 = mul nsw i32 %142, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %139, i64 %148
  %150 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %151 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %150, i32 0, i32 6
  store i32* %149, i32** %151, align 8
  %152 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %153 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @SIZEOF_SONIC_RD, align 4
  %156 = load i32, i32* @SONIC_NUM_RDS, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %159 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @SONIC_BUS_SCALE(i32 %160)
  %162 = mul nsw i32 %157, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %154, i64 %163
  %165 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %166 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %165, i32 0, i32 7
  store i32* %164, i32** %166, align 8
  %167 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %168 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %171 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  %172 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %173 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @SIZEOF_SONIC_CDA, align 4
  %176 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %177 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @SONIC_BUS_SCALE(i32 %178)
  %180 = mul nsw i32 %175, %179
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %174, %181
  %183 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %184 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %183, i32 0, i32 3
  store i64 %182, i64* %184, align 8
  %185 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %186 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @SIZEOF_SONIC_TD, align 4
  %189 = load i32, i32* @SONIC_NUM_TDS, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %192 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @SONIC_BUS_SCALE(i32 %193)
  %195 = mul nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %187, %196
  %198 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %199 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %201 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @SIZEOF_SONIC_RD, align 4
  %204 = load i32, i32* @SONIC_NUM_RDS, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %207 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @SONIC_BUS_SCALE(i32 %208)
  %210 = mul nsw i32 %205, %209
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %202, %211
  %213 = load %struct.sonic_local*, %struct.sonic_local** %6, align 8
  %214 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 3
  store i32* @sonic_netdev_ops, i32** %216, align 8
  %217 = load i32, i32* @TX_TIMEOUT, align 4
  %218 = load %struct.net_device*, %struct.net_device** %3, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @SONIC_CRCT, align 4
  %221 = call i32 @SONIC_WRITE(i32 %220, i32 65535)
  %222 = load i32, i32* @SONIC_FAET, align 4
  %223 = call i32 @SONIC_WRITE(i32 %222, i32 65535)
  %224 = load i32, i32* @SONIC_MPT, align 4
  %225 = call i32 @SONIC_WRITE(i32 %224, i32 65535)
  store i32 0, i32* %2, align 4
  br label %233

226:                                              ; preds = %117, %53
  %227 = load %struct.net_device*, %struct.net_device** %3, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @SONIC_MEM_SIZE, align 4
  %231 = call i32 @release_mem_region(i32 %229, i32 %230)
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %226, %118, %20
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @SONIC_READ(i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @SONIC_WRITE(i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @SONIC_BUS_SCALE(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
