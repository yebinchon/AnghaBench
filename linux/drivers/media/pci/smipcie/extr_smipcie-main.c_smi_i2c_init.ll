; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_dev = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 (%struct.smi_dev*, i32)*, i32 (%struct.smi_dev*, i32)*, %struct.smi_dev* }
%struct.TYPE_8__ = type { i32 }

@I2C_A_SW_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SMI-I2C0\00", align 1
@THIS_MODULE = common dso_local global i8* null, align 8
@smi_i2c0_getsda = common dso_local global i32 0, align 4
@smi_i2c0_getscl = common dso_local global i32 0, align 4
@I2C_B_SW_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SMI-I2C1\00", align 1
@smi_i2c1_getsda = common dso_local global i32 0, align 4
@smi_i2c1_getscl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_dev*)* @smi_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_i2c_init(%struct.smi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.smi_dev* %0, %struct.smi_dev** %3, align 8
  %5 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %6 = load i32, i32* @I2C_A_SW_CTL, align 4
  %7 = call i32 @smi_i2c_cfg(%struct.smi_dev* %5, i32 %6)
  %8 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %9 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 0
  %12 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %13 = call i32 @i2c_set_adapdata(%struct.TYPE_10__* %11, %struct.smi_dev* %12)
  %14 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %15 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strscpy(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = load i8*, i8** @THIS_MODULE, align 8
  %22 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %23 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store i8* %21, i8** %26, align 8
  %27 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %28 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %32 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32* %30, i32** %36, align 8
  %37 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %38 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 0
  %41 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %42 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %45, align 8
  %46 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %47 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %48 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  store %struct.smi_dev* %46, %struct.smi_dev** %51, align 8
  %52 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %53 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  store i32 (%struct.smi_dev*, i32)* @smi_i2c0_setsda, i32 (%struct.smi_dev*, i32)** %56, align 8
  %57 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %58 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i32 (%struct.smi_dev*, i32)* @smi_i2c0_setscl, i32 (%struct.smi_dev*, i32)** %61, align 8
  %62 = load i32, i32* @smi_i2c0_getsda, align 4
  %63 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %64 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* @smi_i2c0_getscl, align 4
  %69 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %70 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 %68, i32* %73, align 8
  %74 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %75 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 12, i32* %78, align 8
  %79 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %80 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 10, i32* %83, align 4
  %84 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %85 = call i32 @smi_i2c0_setsda(%struct.smi_dev* %84, i32 1)
  %86 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %87 = call i32 @smi_i2c0_setscl(%struct.smi_dev* %86, i32 1)
  %88 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %89 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 0
  %92 = call i32 @i2c_bit_add_bus(%struct.TYPE_10__* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %1
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %196

97:                                               ; preds = %1
  %98 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %99 = load i32, i32* @I2C_B_SW_CTL, align 4
  %100 = call i32 @smi_i2c_cfg(%struct.smi_dev* %98, i32 %99)
  %101 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %102 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 1
  %105 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %106 = call i32 @i2c_set_adapdata(%struct.TYPE_10__* %104, %struct.smi_dev* %105)
  %107 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %108 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @strscpy(i32 %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %114 = load i8*, i8** @THIS_MODULE, align 8
  %115 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %116 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i8* %114, i8** %119, align 8
  %120 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %121 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %120, i32 0, i32 2
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %125 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32* %123, i32** %129, align 8
  %130 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %131 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 1
  %134 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %135 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %138, align 8
  %139 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %140 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %141 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  store %struct.smi_dev* %139, %struct.smi_dev** %144, align 8
  %145 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %146 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  store i32 (%struct.smi_dev*, i32)* @smi_i2c1_setsda, i32 (%struct.smi_dev*, i32)** %149, align 8
  %150 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %151 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  store i32 (%struct.smi_dev*, i32)* @smi_i2c1_setscl, i32 (%struct.smi_dev*, i32)** %154, align 8
  %155 = load i32, i32* @smi_i2c1_getsda, align 4
  %156 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %157 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* @smi_i2c1_getscl, align 4
  %162 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %163 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  store i32 %161, i32* %166, align 8
  %167 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %168 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %167, i32 0, i32 1
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32 12, i32* %171, align 8
  %172 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %173 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %172, i32 0, i32 1
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i32 10, i32* %176, align 4
  %177 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %178 = call i32 @smi_i2c1_setsda(%struct.smi_dev* %177, i32 1)
  %179 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %180 = call i32 @smi_i2c1_setscl(%struct.smi_dev* %179, i32 1)
  %181 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %182 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 1
  %185 = call i32 @i2c_bit_add_bus(%struct.TYPE_10__* %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %97
  %189 = load %struct.smi_dev*, %struct.smi_dev** %3, align 8
  %190 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 0
  %193 = call i32 @i2c_del_adapter(%struct.TYPE_10__* %192)
  br label %194

194:                                              ; preds = %188, %97
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %194, %95
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @smi_i2c_cfg(%struct.smi_dev*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_10__*, %struct.smi_dev*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @smi_i2c0_setsda(%struct.smi_dev*, i32) #1

declare dso_local i32 @smi_i2c0_setscl(%struct.smi_dev*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_10__*) #1

declare dso_local i32 @smi_i2c1_setsda(%struct.smi_dev*, i32) #1

declare dso_local i32 @smi_i2c1_setscl(%struct.smi_dev*, i32) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
