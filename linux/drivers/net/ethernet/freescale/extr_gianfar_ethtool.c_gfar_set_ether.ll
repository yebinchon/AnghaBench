; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_ether.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_ether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethhdr = type { i32*, i32*, i32 }
%struct.filer_table = type { i32 }

@RQFCR_PID_SAH = common dso_local global i32 0, align 4
@RQFCR_PID_SAL = common dso_local global i32 0, align 4
@RQFPR_EBC = common dso_local global i32 0, align 4
@RQFCR_PID_DAH = common dso_local global i32 0, align 4
@RQFCR_PID_DAL = common dso_local global i32 0, align 4
@RQFCR_PID_ETY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ethhdr*, %struct.ethhdr*, %struct.filer_table*)* @gfar_set_ether to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_set_ether(%struct.ethhdr* %0, %struct.ethhdr* %1, %struct.filer_table* %2) #0 {
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca %struct.filer_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ethhdr* %0, %struct.ethhdr** %4, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %5, align 8
  store %struct.filer_table* %2, %struct.filer_table** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %10 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @is_broadcast_ether_addr(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %107, label %14

14:                                               ; preds = %3
  %15 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %16 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @is_zero_ether_addr(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %60

21:                                               ; preds = %14
  %22 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %27, %33
  %35 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %46, %52
  %54 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %21, %20
  %61 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %62 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 16
  %67 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %68 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %66, %72
  %74 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %75 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @RQFCR_PID_SAH, align 4
  %82 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %83 = call i32 @gfar_set_attribute(i32 %79, i32 %80, i32 %81, %struct.filer_table* %82)
  %84 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %85 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %91 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %89, %95
  %97 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %98 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %96, %101
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @RQFCR_PID_SAL, align 4
  %105 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %106 = call i32 @gfar_set_attribute(i32 %102, i32 %103, i32 %104, %struct.filer_table* %105)
  br label %107

107:                                              ; preds = %60, %3
  %108 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %109 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @is_broadcast_ether_addr(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %224, label %113

113:                                              ; preds = %107
  %114 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %115 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @is_broadcast_ether_addr(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %121 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @is_zero_ether_addr(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @RQFPR_EBC, align 4
  %127 = load i32, i32* @RQFPR_EBC, align 4
  %128 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %129 = call i32 @gfar_set_parse_bits(i32 %126, i32 %127, %struct.filer_table* %128)
  br label %223

130:                                              ; preds = %119, %113
  %131 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %132 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i64 @is_zero_ether_addr(i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %176

137:                                              ; preds = %130
  %138 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %139 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 16
  %144 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %145 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 8
  %150 = or i32 %143, %149
  %151 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %152 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %150, %155
  store i32 %156, i32* %7, align 4
  %157 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %158 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 16
  %163 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %164 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 8
  %169 = or i32 %162, %168
  %170 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %171 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 5
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %169, %174
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %137, %136
  %177 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %178 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 16
  %183 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %184 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = or i32 %182, %188
  %190 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %191 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %189, %194
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @RQFCR_PID_DAH, align 4
  %198 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %199 = call i32 @gfar_set_attribute(i32 %195, i32 %196, i32 %197, %struct.filer_table* %198)
  %200 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %201 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 16
  %206 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %207 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 8
  %212 = or i32 %205, %211
  %213 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %214 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 5
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %212, %217
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @RQFCR_PID_DAL, align 4
  %221 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %222 = call i32 @gfar_set_attribute(i32 %218, i32 %219, i32 %220, %struct.filer_table* %221)
  br label %223

223:                                              ; preds = %176, %125
  br label %224

224:                                              ; preds = %223, %107
  %225 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %226 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @be16_to_cpu(i32 %227)
  %229 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %230 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @be16_to_cpu(i32 %231)
  %233 = load i32, i32* @RQFCR_PID_ETY, align 4
  %234 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %235 = call i32 @gfar_set_attribute(i32 %228, i32 %232, i32 %233, %struct.filer_table* %234)
  ret void
}

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @gfar_set_attribute(i32, i32, i32, %struct.filer_table*) #1

declare dso_local i32 @gfar_set_parse_bits(i32, i32, %struct.filer_table*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
