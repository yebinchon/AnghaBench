; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.c_enic_alloc_vnic_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.c_enic_alloc_vnic_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"vNIC resources used:  wq %d rq %d cq %d intr %d intr mode %s\0A\00", align 1
@VNIC_DEV_INTR_MODE_INTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"legacy PCI INTx\00", align 1
@VNIC_DEV_INTR_MODE_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@RES_TYPE_INTR_PBA_LEGACY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to hook legacy pba resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enic_alloc_vnic_resources(%struct.enic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %3, align 8
  %7 = load %struct.enic*, %struct.enic** %3, align 8
  %8 = getelementptr inbounds %struct.enic, %struct.enic* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vnic_dev_get_intr_mode(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.enic*, %struct.enic** %3, align 8
  %12 = call i32 @enic_get_dev(%struct.enic* %11)
  %13 = load %struct.enic*, %struct.enic** %3, align 8
  %14 = getelementptr inbounds %struct.enic, %struct.enic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.enic*, %struct.enic** %3, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.enic*, %struct.enic** %3, align 8
  %20 = getelementptr inbounds %struct.enic, %struct.enic* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.enic*, %struct.enic** %3, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @VNIC_DEV_INTR_MODE_INTX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %42

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @VNIC_DEV_INTR_MODE_MSI, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %33 ], [ %39, %34 ]
  br label %42

42:                                               ; preds = %40, %28
  %43 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %41, %40 ]
  %44 = call i32 @dev_info(i32 %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i8* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %71, %42
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.enic*, %struct.enic** %3, align 8
  %48 = getelementptr inbounds %struct.enic, %struct.enic* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.enic*, %struct.enic** %3, align 8
  %53 = getelementptr inbounds %struct.enic, %struct.enic* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.enic*, %struct.enic** %3, align 8
  %56 = getelementptr inbounds %struct.enic, %struct.enic* %55, i32 0, i32 10
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.enic*, %struct.enic** %3, align 8
  %63 = getelementptr inbounds %struct.enic, %struct.enic* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @vnic_wq_alloc(i32 %54, i32* %60, i32 %61, i32 %65, i32 4)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %206

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %45

74:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.enic*, %struct.enic** %3, align 8
  %78 = getelementptr inbounds %struct.enic, %struct.enic* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load %struct.enic*, %struct.enic** %3, align 8
  %83 = getelementptr inbounds %struct.enic, %struct.enic* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.enic*, %struct.enic** %3, align 8
  %86 = getelementptr inbounds %struct.enic, %struct.enic* %85, i32 0, i32 9
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.enic*, %struct.enic** %3, align 8
  %93 = getelementptr inbounds %struct.enic, %struct.enic* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @vnic_rq_alloc(i32 %84, i32* %90, i32 %91, i32 %95, i32 4)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  br label %206

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %75

104:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %154, %104
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.enic*, %struct.enic** %3, align 8
  %108 = getelementptr inbounds %struct.enic, %struct.enic* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %157

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.enic*, %struct.enic** %3, align 8
  %114 = getelementptr inbounds %struct.enic, %struct.enic* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load %struct.enic*, %struct.enic** %3, align 8
  %119 = getelementptr inbounds %struct.enic, %struct.enic* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.enic*, %struct.enic** %3, align 8
  %122 = getelementptr inbounds %struct.enic, %struct.enic* %121, i32 0, i32 8
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.enic*, %struct.enic** %3, align 8
  %129 = getelementptr inbounds %struct.enic, %struct.enic* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @vnic_cq_alloc(i32 %120, i32* %126, i32 %127, i32 %131, i32 4)
  store i32 %132, i32* %6, align 4
  br label %149

133:                                              ; preds = %111
  %134 = load %struct.enic*, %struct.enic** %3, align 8
  %135 = getelementptr inbounds %struct.enic, %struct.enic* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.enic*, %struct.enic** %3, align 8
  %138 = getelementptr inbounds %struct.enic, %struct.enic* %137, i32 0, i32 8
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.enic*, %struct.enic** %3, align 8
  %145 = getelementptr inbounds %struct.enic, %struct.enic* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @vnic_cq_alloc(i32 %136, i32* %142, i32 %143, i32 %147, i32 4)
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %133, %117
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %206

153:                                              ; preds = %149
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %105

157:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %180, %157
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.enic*, %struct.enic** %3, align 8
  %161 = getelementptr inbounds %struct.enic, %struct.enic* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %158
  %165 = load %struct.enic*, %struct.enic** %3, align 8
  %166 = getelementptr inbounds %struct.enic, %struct.enic* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.enic*, %struct.enic** %3, align 8
  %169 = getelementptr inbounds %struct.enic, %struct.enic* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @vnic_intr_alloc(i32 %167, i32* %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %164
  br label %206

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %158

183:                                              ; preds = %158
  %184 = load %struct.enic*, %struct.enic** %3, align 8
  %185 = getelementptr inbounds %struct.enic, %struct.enic* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @RES_TYPE_INTR_PBA_LEGACY, align 4
  %188 = call i32 @vnic_dev_get_res(i32 %186, i32 %187, i32 0)
  %189 = load %struct.enic*, %struct.enic** %3, align 8
  %190 = getelementptr inbounds %struct.enic, %struct.enic* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = load %struct.enic*, %struct.enic** %3, align 8
  %192 = getelementptr inbounds %struct.enic, %struct.enic* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %205, label %195

195:                                              ; preds = %183
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @VNIC_DEV_INTR_MODE_INTX, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load %struct.enic*, %struct.enic** %3, align 8
  %201 = call i32 @enic_get_dev(%struct.enic* %200)
  %202 = call i32 @dev_err(i32 %201, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %203 = load i32, i32* @ENODEV, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %6, align 4
  br label %206

205:                                              ; preds = %195, %183
  store i32 0, i32* %2, align 4
  br label %210

206:                                              ; preds = %199, %178, %152, %99, %69
  %207 = load %struct.enic*, %struct.enic** %3, align 8
  %208 = call i32 @enic_free_vnic_resources(%struct.enic* %207)
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %206, %205
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @enic_get_dev(%struct.enic*) #1

declare dso_local i32 @vnic_wq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_rq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_cq_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vnic_intr_alloc(i32, i32*, i32) #1

declare dso_local i32 @vnic_dev_get_res(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @enic_free_vnic_resources(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
