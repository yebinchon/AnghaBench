; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ucc_geth_memclean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ucc_geth_memclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { i32*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@ENET_INIT_PARAM_MAX_ENTRIES_RX = common dso_local global i32 0, align 4
@ENET_INIT_PARAM_MAX_ENTRIES_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucc_geth_private*)* @ucc_geth_memclean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucc_geth_memclean(%struct.ucc_geth_private* %0) #0 {
  %2 = alloca %struct.ucc_geth_private*, align 8
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %2, align 8
  %3 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %4 = icmp ne %struct.ucc_geth_private* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %232

6:                                                ; preds = %1
  %7 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %8 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %7, i32 0, i32 27
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %13 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %12, i32 0, i32 27
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ucc_fast_free(i32* %14)
  %16 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %17 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %16, i32 0, i32 27
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %6
  %19 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %20 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %19, i32 0, i32 25
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %25 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %24, i32 0, i32 26
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @qe_muram_free(i32 %26)
  %28 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %29 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %28, i32 0, i32 25
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %32 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %31, i32 0, i32 23
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %37 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %36, i32 0, i32 24
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @qe_muram_free(i32 %38)
  %40 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %41 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %40, i32 0, i32 23
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %44 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %43, i32 0, i32 21
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %49 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %48, i32 0, i32 22
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @qe_muram_free(i32 %50)
  %52 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %53 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %52, i32 0, i32 21
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %56 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %55, i32 0, i32 19
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %61 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %60, i32 0, i32 20
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @qe_muram_free(i32 %62)
  %64 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %65 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %64, i32 0, i32 19
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %68 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %67, i32 0, i32 17
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %73 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %72, i32 0, i32 18
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @qe_muram_free(i32 %74)
  %76 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %77 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %76, i32 0, i32 17
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %80 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %79, i32 0, i32 15
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %85 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %84, i32 0, i32 16
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @qe_muram_free(i32 %86)
  %88 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %89 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %88, i32 0, i32 15
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %83, %78
  %91 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %92 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %91, i32 0, i32 13
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %97 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %96, i32 0, i32 14
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @qe_muram_free(i32 %98)
  %100 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %101 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %100, i32 0, i32 13
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %90
  %103 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %104 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %103, i32 0, i32 11
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %109 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @qe_muram_free(i32 %110)
  %112 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %113 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %112, i32 0, i32 11
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %116 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %115, i32 0, i32 9
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %121 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @qe_muram_free(i32 %122)
  %124 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %125 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %124, i32 0, i32 9
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %119, %114
  %127 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %128 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %133 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @qe_muram_free(i32 %134)
  %136 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %137 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %136, i32 0, i32 7
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %131, %126
  %139 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %140 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %145 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @qe_muram_free(i32 %146)
  %148 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %149 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %148, i32 0, i32 5
  store i32* null, i32** %149, align 8
  br label %150

150:                                              ; preds = %143, %138
  %151 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %152 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %151, i32 0, i32 3
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = icmp ne %struct.TYPE_4__* %153, null
  br i1 %154, label %155, label %190

155:                                              ; preds = %150
  %156 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %157 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %158 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* @ENET_INIT_PARAM_MAX_ENTRIES_RX, align 4
  %164 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %165 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %164, i32 0, i32 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @return_init_enet_entries(%struct.ucc_geth_private* %156, i32* %162, i32 %163, i32 %168, i32 1)
  %170 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %171 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %172 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* @ENET_INIT_PARAM_MAX_ENTRIES_TX, align 4
  %178 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %179 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %178, i32 0, i32 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @return_init_enet_entries(%struct.ucc_geth_private* %170, i32* %176, i32 %177, i32 %182, i32 0)
  %184 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %185 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %184, i32 0, i32 3
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = call i32 @kfree(%struct.TYPE_4__* %186)
  %188 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %189 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %188, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %189, align 8
  br label %190

190:                                              ; preds = %155, %150
  %191 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %192 = call i32 @ucc_geth_free_tx(%struct.ucc_geth_private* %191)
  %193 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %194 = call i32 @ucc_geth_free_rx(%struct.ucc_geth_private* %193)
  br label %195

195:                                              ; preds = %201, %190
  %196 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %197 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %196, i32 0, i32 2
  %198 = call i32 @list_empty(i32* %197)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %203 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %202, i32 0, i32 2
  %204 = call i32 @dequeue(i32* %203)
  %205 = call i32 @ENET_ADDR_CONT_ENTRY(i32 %204)
  %206 = call i32 @put_enet_addr_container(i32 %205)
  br label %195

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %214, %207
  %209 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %210 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %209, i32 0, i32 1
  %211 = call i32 @list_empty(i32* %210)
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %216 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %215, i32 0, i32 1
  %217 = call i32 @dequeue(i32* %216)
  %218 = call i32 @ENET_ADDR_CONT_ENTRY(i32 %217)
  %219 = call i32 @put_enet_addr_container(i32 %218)
  br label %208

220:                                              ; preds = %208
  %221 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %222 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %227 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @iounmap(i32* %228)
  %230 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %2, align 8
  %231 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %230, i32 0, i32 0
  store i32* null, i32** %231, align 8
  br label %232

232:                                              ; preds = %5, %225, %220
  ret void
}

declare dso_local i32 @ucc_fast_free(i32*) #1

declare dso_local i32 @qe_muram_free(i32) #1

declare dso_local i32 @return_init_enet_entries(%struct.ucc_geth_private*, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @ucc_geth_free_tx(%struct.ucc_geth_private*) #1

declare dso_local i32 @ucc_geth_free_rx(%struct.ucc_geth_private*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @put_enet_addr_container(i32) #1

declare dso_local i32 @ENET_ADDR_CONT_ENTRY(i32) #1

declare dso_local i32 @dequeue(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
