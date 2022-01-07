; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_vpd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_vpd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, i64*, i64*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.swStat }
%struct.swStat = type { i32, i32, i32 }

@XFRAME_II_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Xframe II 10GbE network adapter\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Xframe I 10GbE network adapter\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"NOT AVAILABLE\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Read of VPD data failed\0A\00", align 1
@VPD_STRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @s2io_vpd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_vpd_read(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 128, i32* %9, align 4
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.swStat* %15, %struct.swStat** %10, align 8
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %17 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFRAME_II_DEVICE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %23 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @strcpy(i64* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %28 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @strcpy(i64* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 80, i32* %9, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %33 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @strcpy(i64* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kmalloc(i32 256, i32 %36)
  store i32* %37, i32** %3, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load %struct.swStat*, %struct.swStat** %10, align 8
  %42 = getelementptr inbounds %struct.swStat, %struct.swStat* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %207

45:                                               ; preds = %31
  %46 = load %struct.swStat*, %struct.swStat** %10, align 8
  %47 = getelementptr inbounds %struct.swStat, %struct.swStat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 256
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %108, %45
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 256
  br i1 %52, label %53, label %111

53:                                               ; preds = %50
  %54 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %55 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 2
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pci_write_config_byte(i32 %56, i32 %58, i32 %59)
  %61 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %62 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @pci_read_config_byte(i32 %63, i32 %65, i32* %4)
  %67 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %68 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 3
  %72 = call i32 @pci_write_config_byte(i32 %69, i32 %71, i32 0)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %88, %53
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 5
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = call i32 @msleep(i32 2)
  %78 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %79 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 3
  %83 = call i32 @pci_read_config_byte(i32 %80, i32 %82, i32* %4)
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %91

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %73

91:                                               ; preds = %86, %73
  %92 = load i32, i32* %6, align 4
  %93 = icmp sge i32 %92, 5
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @ERR_DBG, align 4
  %96 = call i32 @DBG_PRINT(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %111

97:                                               ; preds = %91
  %98 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %99 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 4
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @pci_read_config_dword(i32 %100, i32 %102, i32* %106)
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 4
  store i32 %110, i32* %5, align 4
  br label %50

111:                                              ; preds = %94, %50
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %174, label %114

114:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %170, %114
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 252
  br i1 %117, label %118, label %173

118:                                              ; preds = %115
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 83
  br i1 %124, label %125, label %169

125:                                              ; preds = %118
  %126 = load i32*, i32** %3, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 78
  br i1 %132, label %133, label %169

133:                                              ; preds = %125
  %134 = load i32*, i32** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @VPD_STRING_LEN, align 4
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 256, %142
  %144 = sub nsw i32 %143, 2
  %145 = call i32 @min(i32 %141, i32 %144)
  %146 = icmp slt i32 %140, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %133
  %148 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %149 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %148, i32 0, i32 2
  %150 = load i64*, i64** %149, align 8
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @memcpy(i64* %150, i32* %155, i32 %156)
  %158 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %159 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %158, i32 0, i32 2
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i32, i32* @VPD_STRING_LEN, align 4
  %165 = load i32, i32* %7, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 @memset(i64* %163, i32 0, i32 %166)
  br label %173

168:                                              ; preds = %133
  br label %169

169:                                              ; preds = %168, %125, %118
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %115

173:                                              ; preds = %147, %115
  br label %174

174:                                              ; preds = %173, %111
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %200, label %177

177:                                              ; preds = %174
  %178 = load i32*, i32** %3, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @VPD_STRING_LEN, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %177
  %184 = load i32*, i32** %3, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %7, align 4
  %187 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %188 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = load i32*, i32** %3, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @memcpy(i64* %189, i32* %191, i32 %192)
  %194 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %195 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %183, %177, %174
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @kfree(i32* %201)
  %203 = load %struct.swStat*, %struct.swStat** %10, align 8
  %204 = getelementptr inbounds %struct.swStat, %struct.swStat* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 256
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200, %40
  ret void
}

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
