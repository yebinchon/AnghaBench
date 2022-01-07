; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vin_coeff = type { i16, i32* }
%struct.rvin_dev = type { i32 }

@vin_coeff_set = common dso_local global %struct.vin_coeff* null, align 8
@VNC1A_REG = common dso_local global i32 0, align 4
@VNC1B_REG = common dso_local global i32 0, align 4
@VNC1C_REG = common dso_local global i32 0, align 4
@VNC2A_REG = common dso_local global i32 0, align 4
@VNC2B_REG = common dso_local global i32 0, align 4
@VNC2C_REG = common dso_local global i32 0, align 4
@VNC3A_REG = common dso_local global i32 0, align 4
@VNC3B_REG = common dso_local global i32 0, align 4
@VNC3C_REG = common dso_local global i32 0, align 4
@VNC4A_REG = common dso_local global i32 0, align 4
@VNC4B_REG = common dso_local global i32 0, align 4
@VNC4C_REG = common dso_local global i32 0, align 4
@VNC5A_REG = common dso_local global i32 0, align 4
@VNC5B_REG = common dso_local global i32 0, align 4
@VNC5C_REG = common dso_local global i32 0, align 4
@VNC6A_REG = common dso_local global i32 0, align 4
@VNC6B_REG = common dso_local global i32 0, align 4
@VNC6C_REG = common dso_local global i32 0, align 4
@VNC7A_REG = common dso_local global i32 0, align 4
@VNC7B_REG = common dso_local global i32 0, align 4
@VNC7C_REG = common dso_local global i32 0, align 4
@VNC8A_REG = common dso_local global i32 0, align 4
@VNC8B_REG = common dso_local global i32 0, align 4
@VNC8C_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvin_dev*, i16)* @rvin_set_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_set_coeff(%struct.rvin_dev* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.vin_coeff*, align 8
  %7 = alloca %struct.vin_coeff*, align 8
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store i16 %1, i16* %4, align 2
  store %struct.vin_coeff* null, %struct.vin_coeff** %6, align 8
  store %struct.vin_coeff* null, %struct.vin_coeff** %7, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.vin_coeff*, %struct.vin_coeff** @vin_coeff_set, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.vin_coeff* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  store %struct.vin_coeff* %14, %struct.vin_coeff** %6, align 8
  %15 = load %struct.vin_coeff*, %struct.vin_coeff** @vin_coeff_set, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %15, i64 %17
  store %struct.vin_coeff* %18, %struct.vin_coeff** %7, align 8
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %22 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %26, %8
  %32 = load %struct.vin_coeff*, %struct.vin_coeff** %6, align 8
  %33 = icmp ne %struct.vin_coeff* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i16, i16* %4, align 2
  %36 = zext i16 %35 to i32
  %37 = load %struct.vin_coeff*, %struct.vin_coeff** %6, align 8
  %38 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 8
  %40 = zext i16 %39 to i32
  %41 = sub nsw i32 %36, %40
  %42 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %43 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %4, align 2
  %47 = zext i16 %46 to i32
  %48 = sub nsw i32 %45, %47
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load %struct.vin_coeff*, %struct.vin_coeff** %6, align 8
  store %struct.vin_coeff* %51, %struct.vin_coeff** %7, align 8
  br label %52

52:                                               ; preds = %50, %34, %31
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %54 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %55 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VNC1A_REG, align 4
  %60 = call i32 @rvin_write(%struct.rvin_dev* %53, i32 %58, i32 %59)
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %62 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %63 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @VNC1B_REG, align 4
  %68 = call i32 @rvin_write(%struct.rvin_dev* %61, i32 %66, i32 %67)
  %69 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %70 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %71 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @VNC1C_REG, align 4
  %76 = call i32 @rvin_write(%struct.rvin_dev* %69, i32 %74, i32 %75)
  %77 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %78 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %79 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VNC2A_REG, align 4
  %84 = call i32 @rvin_write(%struct.rvin_dev* %77, i32 %82, i32 %83)
  %85 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %86 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %87 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @VNC2B_REG, align 4
  %92 = call i32 @rvin_write(%struct.rvin_dev* %85, i32 %90, i32 %91)
  %93 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %94 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %95 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @VNC2C_REG, align 4
  %100 = call i32 @rvin_write(%struct.rvin_dev* %93, i32 %98, i32 %99)
  %101 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %102 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %103 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @VNC3A_REG, align 4
  %108 = call i32 @rvin_write(%struct.rvin_dev* %101, i32 %106, i32 %107)
  %109 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %110 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %111 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 7
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @VNC3B_REG, align 4
  %116 = call i32 @rvin_write(%struct.rvin_dev* %109, i32 %114, i32 %115)
  %117 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %118 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %119 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VNC3C_REG, align 4
  %124 = call i32 @rvin_write(%struct.rvin_dev* %117, i32 %122, i32 %123)
  %125 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %126 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %127 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 9
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @VNC4A_REG, align 4
  %132 = call i32 @rvin_write(%struct.rvin_dev* %125, i32 %130, i32 %131)
  %133 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %134 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %135 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 10
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @VNC4B_REG, align 4
  %140 = call i32 @rvin_write(%struct.rvin_dev* %133, i32 %138, i32 %139)
  %141 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %142 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %143 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 11
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @VNC4C_REG, align 4
  %148 = call i32 @rvin_write(%struct.rvin_dev* %141, i32 %146, i32 %147)
  %149 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %150 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %151 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 12
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @VNC5A_REG, align 4
  %156 = call i32 @rvin_write(%struct.rvin_dev* %149, i32 %154, i32 %155)
  %157 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %158 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %159 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 13
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @VNC5B_REG, align 4
  %164 = call i32 @rvin_write(%struct.rvin_dev* %157, i32 %162, i32 %163)
  %165 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %166 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %167 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 14
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @VNC5C_REG, align 4
  %172 = call i32 @rvin_write(%struct.rvin_dev* %165, i32 %170, i32 %171)
  %173 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %174 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %175 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 15
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @VNC6A_REG, align 4
  %180 = call i32 @rvin_write(%struct.rvin_dev* %173, i32 %178, i32 %179)
  %181 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %182 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %183 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 16
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @VNC6B_REG, align 4
  %188 = call i32 @rvin_write(%struct.rvin_dev* %181, i32 %186, i32 %187)
  %189 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %190 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %191 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 17
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @VNC6C_REG, align 4
  %196 = call i32 @rvin_write(%struct.rvin_dev* %189, i32 %194, i32 %195)
  %197 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %198 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %199 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 18
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @VNC7A_REG, align 4
  %204 = call i32 @rvin_write(%struct.rvin_dev* %197, i32 %202, i32 %203)
  %205 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %206 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %207 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 19
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @VNC7B_REG, align 4
  %212 = call i32 @rvin_write(%struct.rvin_dev* %205, i32 %210, i32 %211)
  %213 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %214 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %215 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 20
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @VNC7C_REG, align 4
  %220 = call i32 @rvin_write(%struct.rvin_dev* %213, i32 %218, i32 %219)
  %221 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %222 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %223 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 21
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @VNC8A_REG, align 4
  %228 = call i32 @rvin_write(%struct.rvin_dev* %221, i32 %226, i32 %227)
  %229 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %230 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %231 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 22
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @VNC8B_REG, align 4
  %236 = call i32 @rvin_write(%struct.rvin_dev* %229, i32 %234, i32 %235)
  %237 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %238 = load %struct.vin_coeff*, %struct.vin_coeff** %7, align 8
  %239 = getelementptr inbounds %struct.vin_coeff, %struct.vin_coeff* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 23
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @VNC8C_REG, align 4
  %244 = call i32 @rvin_write(%struct.rvin_dev* %237, i32 %242, i32 %243)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.vin_coeff*) #1

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
