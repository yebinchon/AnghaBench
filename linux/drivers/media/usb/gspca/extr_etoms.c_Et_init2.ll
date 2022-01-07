; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_Et_init2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_Et_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@Et_init2.FormLine = internal constant [6 x i32] [i32 132, i32 3, i32 20, i32 244, i32 1, i32 5], align 16
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Open Init2 ET\0A\00", align 1
@ET_GPIO_DIR_CTRL = common dso_local global i32 0, align 4
@ET_GPIO_OUT = common dso_local global i32 0, align 4
@ET_GPIO_IN = common dso_local global i32 0, align 4
@ET_ClCK = common dso_local global i32 0, align 4
@ET_CTRL = common dso_local global i32 0, align 4
@ET_COMP_VAL1 = common dso_local global i32 0, align 4
@ET_COMP_VAL0 = common dso_local global i32 0, align 4
@ET_COMP = common dso_local global i32 0, align 4
@ET_MAXQt = common dso_local global i32 0, align 4
@ET_MINQt = common dso_local global i32 0, align 4
@ET_REG1d = common dso_local global i32 0, align 4
@ET_REG1e = common dso_local global i32 0, align 4
@ET_REG1f = common dso_local global i32 0, align 4
@ET_REG20 = common dso_local global i32 0, align 4
@ET_REG21 = common dso_local global i32 0, align 4
@ET_REG22 = common dso_local global i32 0, align 4
@ET_REG23 = common dso_local global i32 0, align 4
@ET_REG24 = common dso_local global i32 0, align 4
@ET_REG25 = common dso_local global i32 0, align 4
@ET_O_RED = common dso_local global i32 0, align 4
@ET_O_GREEN1 = common dso_local global i32 0, align 4
@ET_O_BLUE = common dso_local global i32 0, align 4
@ET_O_GREEN2 = common dso_local global i32 0, align 4
@ET_G_RED = common dso_local global i32 0, align 4
@ET_G_GREEN1 = common dso_local global i32 0, align 4
@ET_G_BLUE = common dso_local global i32 0, align 4
@ET_G_GREEN2 = common dso_local global i32 0, align 4
@ET_G_GR_H = common dso_local global i32 0, align 4
@ET_G_GB_H = common dso_local global i32 0, align 4
@ET_SYNCHRO = common dso_local global i32 0, align 4
@ET_STARTX = common dso_local global i32 0, align 4
@ET_STARTY = common dso_local global i32 0, align 4
@ET_WIDTH_LOW = common dso_local global i32 0, align 4
@ET_HEIGTH_LOW = common dso_local global i32 0, align 4
@ET_W_H_HEIGTH = common dso_local global i32 0, align 4
@ET_REG6e = common dso_local global i32 0, align 4
@ET_REG6f = common dso_local global i32 0, align 4
@ET_REG70 = common dso_local global i32 0, align 4
@ET_REG71 = common dso_local global i32 0, align 4
@ET_REG72 = common dso_local global i32 0, align 4
@ET_REG73 = common dso_local global i32 0, align 4
@ET_REG74 = common dso_local global i32 0, align 4
@ET_REG75 = common dso_local global i32 0, align 4
@ET_PXL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @Et_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Et_init2(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = load i32, i32* @D_STREAM, align 4
  %6 = call i32 @gspca_dbg(%struct.gspca_dev* %4, i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = load i32, i32* @ET_GPIO_DIR_CTRL, align 4
  %9 = call i32 @reg_w_val(%struct.gspca_dev* %7, i32 %8, i32 47)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = load i32, i32* @ET_GPIO_OUT, align 4
  %12 = call i32 @reg_w_val(%struct.gspca_dev* %10, i32 %11, i32 16)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i32, i32* @ET_GPIO_IN, align 4
  %15 = call i32 @reg_r(%struct.gspca_dev* %13, i32 %14, i32 1)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = load i32, i32* @ET_ClCK, align 4
  %18 = call i32 @reg_w_val(%struct.gspca_dev* %16, i32 %17, i32 20)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* @ET_CTRL, align 4
  %21 = call i32 @reg_w_val(%struct.gspca_dev* %19, i32 %20, i32 27)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ET_COMP_VAL1, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %1
  %38 = load i32, i32* @ET_COMP_VAL0, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32, i32* @ET_COMP, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @reg_w_val(%struct.gspca_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @ET_MAXQt, align 4
  %46 = call i32 @reg_w_val(%struct.gspca_dev* %44, i32 %45, i32 31)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32, i32* @ET_MINQt, align 4
  %49 = call i32 @reg_w_val(%struct.gspca_dev* %47, i32 %48, i32 4)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = load i32, i32* @ET_REG1d, align 4
  %52 = call i32 @reg_w_val(%struct.gspca_dev* %50, i32 %51, i32 255)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load i32, i32* @ET_REG1e, align 4
  %55 = call i32 @reg_w_val(%struct.gspca_dev* %53, i32 %54, i32 255)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* @ET_REG1f, align 4
  %58 = call i32 @reg_w_val(%struct.gspca_dev* %56, i32 %57, i32 255)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32, i32* @ET_REG20, align 4
  %61 = call i32 @reg_w_val(%struct.gspca_dev* %59, i32 %60, i32 53)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32, i32* @ET_REG21, align 4
  %64 = call i32 @reg_w_val(%struct.gspca_dev* %62, i32 %63, i32 1)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = load i32, i32* @ET_REG22, align 4
  %67 = call i32 @reg_w_val(%struct.gspca_dev* %65, i32 %66, i32 0)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = load i32, i32* @ET_REG23, align 4
  %70 = call i32 @reg_w_val(%struct.gspca_dev* %68, i32 %69, i32 255)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = load i32, i32* @ET_REG24, align 4
  %73 = call i32 @reg_w_val(%struct.gspca_dev* %71, i32 %72, i32 255)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* @ET_REG25, align 4
  %76 = call i32 @reg_w_val(%struct.gspca_dev* %74, i32 %75, i32 15)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = call i32 @reg_w_val(%struct.gspca_dev* %77, i32 48, i32 17)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @reg_w_val(%struct.gspca_dev* %79, i32 49, i32 64)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @reg_w_val(%struct.gspca_dev* %81, i32 50, i32 0)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = load i32, i32* @ET_O_RED, align 4
  %85 = call i32 @reg_w_val(%struct.gspca_dev* %83, i32 %84, i32 0)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = load i32, i32* @ET_O_GREEN1, align 4
  %88 = call i32 @reg_w_val(%struct.gspca_dev* %86, i32 %87, i32 0)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = load i32, i32* @ET_O_BLUE, align 4
  %91 = call i32 @reg_w_val(%struct.gspca_dev* %89, i32 %90, i32 0)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = load i32, i32* @ET_O_GREEN2, align 4
  %94 = call i32 @reg_w_val(%struct.gspca_dev* %92, i32 %93, i32 0)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = load i32, i32* @ET_G_RED, align 4
  %97 = call i32 @reg_w_val(%struct.gspca_dev* %95, i32 %96, i32 128)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = load i32, i32* @ET_G_GREEN1, align 4
  %100 = call i32 @reg_w_val(%struct.gspca_dev* %98, i32 %99, i32 128)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %102 = load i32, i32* @ET_G_BLUE, align 4
  %103 = call i32 @reg_w_val(%struct.gspca_dev* %101, i32 %102, i32 128)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = load i32, i32* @ET_G_GREEN2, align 4
  %106 = call i32 @reg_w_val(%struct.gspca_dev* %104, i32 %105, i32 128)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %108 = load i32, i32* @ET_G_GR_H, align 4
  %109 = call i32 @reg_w_val(%struct.gspca_dev* %107, i32 %108, i32 0)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = load i32, i32* @ET_G_GB_H, align 4
  %112 = call i32 @reg_w_val(%struct.gspca_dev* %110, i32 %111, i32 0)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = call i32 @reg_w_val(%struct.gspca_dev* %113, i32 97, i32 128)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = call i32 @reg_w_val(%struct.gspca_dev* %115, i32 98, i32 2)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %118 = call i32 @reg_w_val(%struct.gspca_dev* %117, i32 99, i32 3)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = call i32 @reg_w_val(%struct.gspca_dev* %119, i32 100, i32 20)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = call i32 @reg_w_val(%struct.gspca_dev* %121, i32 101, i32 14)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @reg_w_val(%struct.gspca_dev* %123, i32 102, i32 2)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = call i32 @reg_w_val(%struct.gspca_dev* %125, i32 103, i32 2)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %128 = load i32, i32* @ET_SYNCHRO, align 4
  %129 = call i32 @reg_w_val(%struct.gspca_dev* %127, i32 %128, i32 143)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = load i32, i32* @ET_STARTX, align 4
  %132 = call i32 @reg_w_val(%struct.gspca_dev* %130, i32 %131, i32 105)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = load i32, i32* @ET_STARTY, align 4
  %135 = call i32 @reg_w_val(%struct.gspca_dev* %133, i32 %134, i32 13)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = load i32, i32* @ET_WIDTH_LOW, align 4
  %138 = call i32 @reg_w_val(%struct.gspca_dev* %136, i32 %137, i32 128)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = load i32, i32* @ET_HEIGTH_LOW, align 4
  %141 = call i32 @reg_w_val(%struct.gspca_dev* %139, i32 %140, i32 224)
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %143 = load i32, i32* @ET_W_H_HEIGTH, align 4
  %144 = call i32 @reg_w_val(%struct.gspca_dev* %142, i32 %143, i32 96)
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %146 = load i32, i32* @ET_REG6e, align 4
  %147 = call i32 @reg_w_val(%struct.gspca_dev* %145, i32 %146, i32 134)
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %149 = load i32, i32* @ET_REG6f, align 4
  %150 = call i32 @reg_w_val(%struct.gspca_dev* %148, i32 %149, i32 1)
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = load i32, i32* @ET_REG70, align 4
  %153 = call i32 @reg_w_val(%struct.gspca_dev* %151, i32 %152, i32 38)
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %155 = load i32, i32* @ET_REG71, align 4
  %156 = call i32 @reg_w_val(%struct.gspca_dev* %154, i32 %155, i32 122)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %158 = load i32, i32* @ET_REG72, align 4
  %159 = call i32 @reg_w_val(%struct.gspca_dev* %157, i32 %158, i32 1)
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %161 = load i32, i32* @ET_REG73, align 4
  %162 = call i32 @reg_w_val(%struct.gspca_dev* %160, i32 %161, i32 0)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = load i32, i32* @ET_REG74, align 4
  %165 = call i32 @reg_w_val(%struct.gspca_dev* %163, i32 %164, i32 24)
  %166 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %167 = load i32, i32* @ET_REG75, align 4
  %168 = call i32 @reg_w_val(%struct.gspca_dev* %166, i32 %167, i32 15)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = call i32 @reg_w_val(%struct.gspca_dev* %169, i32 138, i32 32)
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %172 = call i32 @reg_w_val(%struct.gspca_dev* %171, i32 141, i32 15)
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %174 = call i32 @reg_w_val(%struct.gspca_dev* %173, i32 142, i32 8)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = call i32 @reg_w_val(%struct.gspca_dev* %175, i32 3, i32 8)
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %178 = load i32, i32* @ET_PXL_CLK, align 4
  %179 = call i32 @reg_w_val(%struct.gspca_dev* %177, i32 %178, i32 3)
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = call i32 @reg_w_val(%struct.gspca_dev* %180, i32 129, i32 255)
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %183 = call i32 @reg_w_val(%struct.gspca_dev* %182, i32 128, i32 0)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = call i32 @reg_w_val(%struct.gspca_dev* %184, i32 129, i32 255)
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = call i32 @reg_w_val(%struct.gspca_dev* %186, i32 128, i32 32)
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %189 = call i32 @reg_w_val(%struct.gspca_dev* %188, i32 3, i32 1)
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = call i32 @reg_w_val(%struct.gspca_dev* %190, i32 3, i32 0)
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %193 = call i32 @reg_w_val(%struct.gspca_dev* %192, i32 3, i32 8)
  %194 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %195 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %199 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %39
  store i32 4, i32* %3, align 4
  br label %209

208:                                              ; preds = %39
  store i32 30, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %207
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %211 = load i32, i32* @ET_PXL_CLK, align 4
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @reg_w_val(%struct.gspca_dev* %210, i32 %211, i32 %212)
  %214 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %215 = call i32 @reg_w(%struct.gspca_dev* %214, i32 98, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @Et_init2.FormLine, i64 0, i64 0), i32 6)
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %217 = call i32 @reg_w_val(%struct.gspca_dev* %216, i32 129, i32 71)
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %219 = call i32 @reg_w_val(%struct.gspca_dev* %218, i32 128, i32 64)
  %220 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %221 = call i32 @reg_w_val(%struct.gspca_dev* %220, i32 129, i32 48)
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %223 = call i32 @reg_w_val(%struct.gspca_dev* %222, i32 128, i32 32)
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
