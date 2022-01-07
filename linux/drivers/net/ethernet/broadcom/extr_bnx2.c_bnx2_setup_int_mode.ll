; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_setup_int_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_setup_int_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@RX_MAX_RINGS = common dso_local global i32 0, align 4
@bnx2_interrupt = common dso_local global i32 0, align 4
@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@BNX2_FLAG_MSI_CAP = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSI = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_FLAG_ONE_SHOT_MSI = common dso_local global i32 0, align 4
@bnx2_msi_1shot = common dso_local global i32 0, align 4
@bnx2_msi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32)* @bnx2_setup_int_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_setup_int_mode(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @netif_get_num_default_rss_queues()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @max(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @max(i32 %25, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %38

30:                                               ; preds = %19
  %31 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @max(i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %24
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RX_MAX_RINGS, align 4
  %42 = call i8* @min(i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @bnx2_interrupt, align 4
  %45 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %51 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %50, i32 0, i32 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %56, i32 0, i32 5
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i32 %55, i32 %60)
  %62 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %63 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %65 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %64, i32 0, i32 7
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 4
  %74 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %39
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @bnx2_enable_msix(%struct.bnx2* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %80, %39
  %88 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BNX2_FLAG_MSI_CAP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %151

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %151, label %97

97:                                               ; preds = %94
  %98 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %99 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BNX2_FLAG_USING_MSIX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %151, label %104

104:                                              ; preds = %97
  %105 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %106 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %105, i32 0, i32 7
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = call i64 @pci_enable_msi(%struct.TYPE_6__* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %150

110:                                              ; preds = %104
  %111 = load i32, i32* @BNX2_FLAG_USING_MSI, align 4
  %112 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %113 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %117 = call i64 @BNX2_CHIP(%struct.bnx2* %116)
  %118 = load i64, i64* @BNX2_CHIP_5709, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = load i32, i32* @BNX2_FLAG_ONE_SHOT_MSI, align 4
  %122 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %123 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @bnx2_msi_1shot, align 4
  %127 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %128 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %127, i32 0, i32 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32 %126, i32* %131, align 4
  br label %139

132:                                              ; preds = %110
  %133 = load i32, i32* @bnx2_msi, align 4
  %134 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %135 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %134, i32 0, i32 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i32 %133, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %120
  %140 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %141 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %140, i32 0, i32 7
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %146 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %145, i32 0, i32 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 4
  br label %150

150:                                              ; preds = %139, %104
  br label %151

151:                                              ; preds = %150, %97, %94, %87
  %152 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %153 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %158 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i8* @rounddown_pow_of_two(i32 %159)
  %161 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %162 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  br label %173

163:                                              ; preds = %151
  %164 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %165 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %168 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @min(i32 %166, i32 %169)
  %171 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %172 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %171, i32 0, i32 6
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %163, %156
  %174 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %175 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %180 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %183 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  br label %195

184:                                              ; preds = %173
  %185 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %186 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %189 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @min(i32 %187, i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %194 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %184, %178
  %196 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %197 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %196, i32 0, i32 5
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %200 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %199, i32 0, i32 6
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_7__* %198, i8* %201)
  %203 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %204 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %203, i32 0, i32 5
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %207 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @netif_set_real_num_rx_queues(%struct.TYPE_7__* %205, i32 %208)
  ret i32 %209
}

declare dso_local i32 @netif_get_num_default_rss_queues(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @bnx2_enable_msix(%struct.bnx2*, i32) #1

declare dso_local i64 @pci_enable_msi(%struct.TYPE_6__*) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i8* @rounddown_pow_of_two(i32) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
