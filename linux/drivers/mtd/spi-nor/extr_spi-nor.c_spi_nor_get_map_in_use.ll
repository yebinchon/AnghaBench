; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_get_map_in_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_get_map_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMPT_DESC_TYPE_MAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMPT_DESC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.spi_nor*, i32*, i32)* @spi_nor_get_map_in_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @spi_nor_get_map_in_use(%struct.spi_nor* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc(i32 4, i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32* @ERR_PTR(i32 %24)
  store i32* %25, i32** %4, align 8
  br label %171

26:                                               ; preds = %3
  %27 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %28 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %31 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %34 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %110, %26
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %113

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SMPT_DESC_TYPE_MAP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %113

50:                                               ; preds = %40
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SMPT_CMD_READ_DATA(i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @spi_nor_smpt_addr_width(%struct.spi_nor* %57, i32 %62)
  %64 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %65 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @spi_nor_smpt_read_dummy(%struct.spi_nor* %66, i32 %71)
  %73 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %74 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SMPT_CMD_OPCODE(i32 %79)
  %81 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %82 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @spi_nor_read_raw(%struct.spi_nor* %89, i32 %90, i32 1, i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %50
  %96 = load i32, i32* %11, align 4
  %97 = call i32* @ERR_PTR(i32 %96)
  store i32* %97, i32** %8, align 8
  br label %158

98:                                               ; preds = %50
  %99 = load i32, i32* %17, align 4
  %100 = shl i32 %99, 1
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = or i32 %100, %108
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %12, align 4
  br label %36

113:                                              ; preds = %49, %36
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  %116 = call i32* @ERR_PTR(i32 %115)
  store i32* %116, i32** %8, align 8
  br label %117

117:                                              ; preds = %145, %113
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @SMPT_MAP_ID(i32 %126)
  %128 = load i32, i32* %17, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %121
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32* %134, i32** %8, align 8
  br label %157

135:                                              ; preds = %121
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SMPT_DESC_END, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %157

145:                                              ; preds = %135
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @SMPT_MAP_REGION_COUNT(i32 %150)
  %152 = add nsw i64 %151, 1
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %12, align 4
  br label %117

157:                                              ; preds = %144, %130, %117
  br label %158

158:                                              ; preds = %157, %95
  %159 = load i32*, i32** %9, align 8
  %160 = call i32 @kfree(i32* %159)
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %163 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %166 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %169 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %8, align 8
  store i32* %170, i32** %4, align 8
  br label %171

171:                                              ; preds = %158, %22
  %172 = load i32*, i32** %4, align 8
  ret i32* %172
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @SMPT_CMD_READ_DATA(i32) #1

declare dso_local i32 @spi_nor_smpt_addr_width(%struct.spi_nor*, i32) #1

declare dso_local i32 @spi_nor_smpt_read_dummy(%struct.spi_nor*, i32) #1

declare dso_local i32 @SMPT_CMD_OPCODE(i32) #1

declare dso_local i32 @spi_nor_read_raw(%struct.spi_nor*, i32, i32, i32*) #1

declare dso_local i32 @SMPT_MAP_ID(i32) #1

declare dso_local i64 @SMPT_MAP_REGION_COUNT(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
